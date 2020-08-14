import * as fs from 'fs';
import * as path from 'path';
import * as vkbeautify from 'vkbeautify';
import {Fhir} from 'fhir/fhir';

const vsFileNames = fs.readdirSync('input/resources/valueset');
const fhir = new Fhir();

let valueSetsTemplate = fs.readFileSync(path.join(__dirname, 'valuesets.md')).toString();
let valueSetTemplateRows = '';

vsFileNames.forEach((vsFileName) => {
    const absVsFileName = path.join('input/resources/valueset', vsFileName);
    let xmlContent = fs.readFileSync(absVsFileName).toString();
    const resource: any = fhir.xmlToObj(xmlContent);

    // TODO
    resource.title = resource.name;
    resource.name = resource.name
        .replace(' (V2)', '')
        .replace(' (V3)', '')
        .replace(' (DEPRECATED)', '')
        .replace(/ /g, '')
        .replace(/[^0-9a-zA-Z]+/g, '');

    xmlContent = vkbeautify.xml(fhir.objToXml(resource));
    fs.writeFileSync(absVsFileName, xmlContent);
    const nameValue = `<a href="ValueSet-${resource.id}.html">${resource.name}</a>`;
    valueSetTemplateRows += `    <tr><td>${nameValue}</td><td>${resource.id}</td></tr>\r\n`;
});

valueSetsTemplate = valueSetsTemplate.replace('<!-- rows here -->', valueSetTemplateRows);
fs.writeFileSync(path.join(__dirname, '../input/pagecontent/valuesets.md'), valueSetsTemplate);