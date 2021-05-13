import tinymce from 'tinymce/tinymce';
import 'tinymce/themes/silver/theme';
import 'tinymce/plugins/lists';

function tinyMCE() {
    console.log("initializing tinyMCE")
    tinymce.init({
        selector: '.tinymce',
        plugins:['lists'],
        skin: false
    })
}
export { tinyMCE };