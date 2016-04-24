// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `wysiwyg_e`.
@HtmlImport('wysiwyg_e_nodart.html')
library wysiwyg_e.lib.src.wysiwyg_e.wysiwyg_e;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'iron_flex_layout.dart';
import 'iron_flex_layout_classes.dart';
import 'iron_icon.dart';
import 'iron_icons.dart';
import 'iron_media_query.dart';
import 'roboto.dart';
import 'paper_button.dart';
import 'paper_item.dart';
import 'paper_listbox.dart';
import 'paper_menu_button.dart';
import 'paper_tooltip.dart';
import 'prism_import.dart';
import 'behavior.dart';

/// `<wysiwyg-e>` A what-you-see-is-what-you-get editor created with Polymer.
/// Under the hood, it provides undo / redo history management, selection management,
/// and a toolbar that accepts child elements to provide editing capabilities.
/// All the included tools are accessible via both the toolbar buttons and keyboard shortcuts.
///
/// ### Full toolbar example:
///
/// ```html
/// <wysiwyg-e>
///   <wysiwyg-tool-bold class="wysiwyg-tool"></wysiwyg-tool-bold>
///   <wysiwyg-tool-italic class="wysiwyg-tool"></wysiwyg-tool-italic>
///   <wysiwyg-tool-underline class="wysiwyg-tool"></wysiwyg-tool-underline>
///   <wysiwyg-tool-strike class="wysiwyg-tool"></wysiwyg-tool-strike>
///   <wysiwyg-tool-clear class="wysiwyg-tool"></wysiwyg-tool-clear>
///   <wysiwyg-tool-link class="wysiwyg-tool"></wysiwyg-tool-link>
///   <wysiwyg-tool-image class="wysiwyg-tool"></wysiwyg-tool-image>
///   <wysiwyg-tool-ordered class="wysiwyg-tool"></wysiwyg-tool-ordered>
///   <wysiwyg-tool-unordered class="wysiwyg-tool"></wysiwyg-tool-unordered>
///   <wysiwyg-tool-indent class="wysiwyg-tool"></wysiwyg-tool-indent>
///   <wysiwyg-tool-outdent class="wysiwyg-tool"></wysiwyg-tool-outdent>
///   <wysiwyg-tool-justify class="wysiwyg-tool" right center full></wysiwyg-tool-justify>
///   <wysiwyg-tool-heading class="wysiwyg-tool" h1 h2 h3 h4 h5 h6></wysiwyg-tool-heading>
///   <wysiwyg-tool-blockquote class="wysiwyg-tool"></wysiwyg-tool-blockquote>
///   <wysiwyg-tool-undo class="wysiwyg-tool"></wysiwyg-tool-undo>
///   <wysiwyg-tool-redo class="wysiwyg-tool"></wysiwyg-tool-redo>
/// </wysiwyg-e>
/// ```
///
/// ### Styling
///
/// The following custom properties and mixins are available for styling:
///
/// #### Toolbar
///
/// Custom property                        | Description                              | Default
/// --------------------------------------|-----------------------------------------|----------
/// `--wysiwyg-toolbar-background-color`   | Toolbar background color                 | `#2A9AF2`
/// `--wysiwyg-toolbar-color`              | Toolbar foreground color                 | `white`
/// `--wysiwyg-toolbar`                    | Mixin applied to the wysiwyg-e toolbar   | `{}`
///
/// #### Editable Content
///
/// Custom property                  | Description                                  | Default
/// --------------------------------|---------------------------------------------|----------
/// `--wysiwyg-editable`            | Mixin applied to the wysiwyg-e content      | `{}`
/// `--wysiwyg-editable-blockquote`  | Mixen applied to Blockquote `<blockquote>`  | `{}`
/// `--wysiwyg-editable-pre`        | Mixen applied to code `<code>`              | `{}`
/// `--wysiwyg-editable-p`          | Mixen applied to paragraph `<p>`            | `{}`
/// `--wysiwyg-editable-h1`          | Mixen applied to H1 `<h1>`                  | `{}`
/// `--wysiwyg-editable-h2`          | Mixen applied to H2 `<h2>`                  | `{}`
/// `--wysiwyg-editable-h3`          | Mixen applied to H3 `<h3>`                  | `{}`
/// `--wysiwyg-editable-h4`          | Mixen applied to H4 `<h4>`                  | `{}`
/// `--wysiwyg-editable-h5`          | Mixen applied to H5 `<h5>`                  | `{}`
/// `--wysiwyg-editable-h6`          | Mixen applied to H6 `<h7>`                  | `{}`
/// `--wysiwyg-editable-ol`          | Ordered List `<ol>`                          | `{padding-left: 30px;}`
/// `--wysiwyg-editable-ul`          | Unordered List  `<ul>`                      | `{padding-left: 30px;}`
/// `--wysiwyg-editable-li`          | Mixen applied to `<li>`                      | `{}`
/// `--wysiwyg-editable-a`          | Link  `<a>`                                  | `{color: #2A9AF2;}`
/// `--wysiwyg-editable-img`        | Mixen applied to `<img>`                    | `{}`
/// `--wysiwyg-editable-b`          | Mixen applied to `<b>`                      | `{}`
/// `--wysiwyg-editable-u`          | Mixen applied to `<u>`                      | `{}`
/// `--wysiwyg-editable-i`          | Mixen applied to `<i>`                      | `{}`
/// `--wysiwyg-editable-strike`      | Mixen applied to `<strike>`                  | `{}`
/// `--wysiwyg-editable-first-child`| Mixin applied to editable first child        | `{}`
/// `--wysiwyg-editable-last-child`  | Mixin applied to editable last child        | `{}`
/// `--wysiwyg-editable-selection`  | Editable selection                          | `{color: white; background: #2A9AF2;}`
/// `--wysiwyg-html`                | Mixin applied to the wysiwyg-e html content | `{padding: 0 20px 20px 20px;}`
/// `--wysiwyg-html-pre`            | Html content `<pre>`                        | `{margin: 0;}`
/// `--wysiwyg-html-code`            | Html content `<code>`                        | `{display: block; display: block;}`
///
/// #### HTML View
///
/// Custom property         | Description                                   | Default
/// ----------------------|---------------------------------------------|----------
/// `--wysiwyg-html`      | Mixin applied to the wysiwyg-e html content | `{padding: 0 20px 20px 20px;}`
/// `--wysiwyg-html-pre`  | Html content `<pre>`                        | `{margin: 0;}`
/// `--wysiwyg-html-code` | Html content `<code>`                         | `{display: block; display: block;}`
///
/// ### Accessibility / Shortcut Keys
/// `<wysiwyg-e>` implements key bindings to access commands.
///
/// Command           | Shortcut Mac    | Shortcut Windows
/// ----------------|-----------------|-------------------
/// `Bold`          | Cmd + B          | Ctrl + B
/// `Italc`          | Cmd + I          | Ctrl + I
/// `Underline`      | Cmd + U          | Ctrl + U
/// `Strikethrough` | Shift + Alt + D | Shift + Alt + D
/// `Remove Format` | Cmd + Space      | Ctrl + Space
/// `Link`          | Shift + Alt + A | Shift + Alt + A
/// `Image`          | Shift + Alt + M | Shift + Alt + M
/// `Ordered List`  | Shift + Alt + O | Shift + Alt + O
/// `Bullet List`    | Shift + Alt + U | Shift + Alt + U
/// `Indent`        | Tab              | Tab
/// `Outdent`        | Shift + Tab      | Shift + Tab
/// `Align Left`    | Shift + Alt + L | Shift + Alt + L
/// `Align Right`    | Shift + Alt + R | Shift + Alt + R
/// `Align Center`  | Shift + Alt + C | Shift + Alt + C
/// `Justify`        | Shift + Alt + J | Shift + Alt + J
/// `Paragraph`      | Shift + Alt + 0 | Shift + Alt + 0
/// `H1`            | Shift + Alt + 1 | Shift + Alt + 1
/// `H2`            | Shift + Alt + 2 | Shift + Alt + 2
/// `H3`            | Shift + Alt + 3 | Shift + Alt + 2
/// `H4`            | Shift + Alt + 4 | Shift + Alt + 3
/// `H5`            | Shift + Alt + 5 | Shift + Alt + 3
/// `H6`            | Shift + Alt + 6 | Shift + Alt + 6
/// `Blockquote`    | Shift + Alt + Q | Shift + Alt + Q
/// `Undo`          | Cmd + Z          | Ctrl + Z
/// `Redo`          | Cmd + Y           | Ctrl + Y
@CustomElementProxy('wysiwyg-e')
class WysiwygE extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  WysiwygE.created() : super.created();
  factory WysiwygE() => new Element.tag('wysiwyg-e');

  /// Option to hide the built-in settings tool.  Defaults to false.
  bool get hideSettings => jsElement[r'hideSettings'];
  set hideSettings(bool value) { jsElement[r'hideSettings'] = value; }

  /// Tracks viewport with.  Managed by iron-media-query
  bool get minWidth768px => jsElement[r'minWidth768px'];
  set minWidth768px(bool value) { jsElement[r'minWidth768px'] = value; }

  /// Set view mode to 'edit', 'read', or 'html'. Defaults to 'edit'.
  String get mode => jsElement[r'mode'];
  set mode(String value) { jsElement[r'mode'] = value; }

  /// Target for use with selection-mgr and undo-mgr behaviors
  get target => jsElement[r'target'];
  set target(value) { jsElement[r'target'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Computed based on ``minWidth768px``
  String get tooltipPosition => jsElement[r'tooltipPosition'];
  set tooltipPosition(String value) { jsElement[r'tooltipPosition'] = value; }

  disconnect() =>
      jsElement.callMethod('disconnect', []);

  observe() =>
      jsElement.callMethod('observe', []);

  redo() =>
      jsElement.callMethod('redo', []);

  sanitize(html) =>
      jsElement.callMethod('sanitize', [html]);

  undo() =>
      jsElement.callMethod('undo', []);

  updateTools() =>
      jsElement.callMethod('updateTools', []);
}
