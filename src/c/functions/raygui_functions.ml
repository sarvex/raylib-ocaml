module Types = Raylib_generated_types
module Constants = Raygui_generated_constants

module Description (F : Ctypes.FOREIGN) = struct
  open Ctypes
  open F

  (* State modification functions *)
  (*  Enable gui controls (global state) *)
  let enable = foreign "GuiEnable" (void @-> returning void)

  (*  Disable gui controls (global state) *)
  let disable = foreign "GuiDisable" (void @-> returning void)

  (*  Lock gui controls (global state) *)
  let lock = foreign "GuiLock" (void @-> returning void)

  (*  Unlock gui controls (global state) *)
  let unlock = foreign "GuiUnlock" (void @-> returning void)

  (*  Set gui controls alpha (global state), alpha goes from 0.0f to 1.0f *)
  let fade = foreign "GuiFade" (float @-> returning void)

  (*  Set gui state (global state) *)
  let set_state = foreign "GuiSetState" (int @-> returning void)

  (*  Get gui state (global state) *)
  let get_state = foreign "GuiGetState" (void @-> returning int)

  (* Font set/get functions *)
  (*  Set gui custom font (global state) *)
  let set_font = foreign "GuiSetFont" (Types.Font.t @-> returning void)

  (*  Get gui custom font (global state) *)
  let get_font = foreign "GuiGetFont" (void @-> returning Types.Font.t)

  (* Style set/get functions *)
  (*  Set one style property *)
  let _set_style = foreign "GuiSetStyle" (Constants.Wrapped_Control.t @-> int @-> int @-> returning void)

  (*  Get one style property *)
  let _get_style =
    foreign "GuiGetStyle"
      (Constants.Wrapped_Control.t @-> int @-> returning int)

  (* Tooltips set functions *)
  (*  Enable gui tooltips *)
  let enable_tooltip = foreign "GuiEnableTooltip" (void @-> returning void)

  (*  Disable gui tooltips *)
  let disable_tooltip = foreign "GuiDisableTooltip" (void @-> returning void)

  (*  Set current tooltip for display *)
  let set_tooltip = foreign "GuiSetTooltip" (string @-> returning void)

  (*  Clear any tooltip registered *)
  let clear_tooltip = foreign "GuiClearTooltip" (void @-> returning void)

  (* Container/separator controls, useful for controls organization *)
  (*  Window Box control, shows a window that can be closed *)
  let window_box =
    foreign "GuiWindowBox" (Types.Rectangle.t @-> string @-> returning bool)

  (*  Group Box control with text name *)
  let group_box =
    foreign "GuiGroupBox" (Types.Rectangle.t @-> string @-> returning void)

  (*  Line separator control, could contain text *)
  let line = foreign "GuiLine" (Types.Rectangle.t @-> string @-> returning void)

  (*  Panel control, useful to group controls *)
  let panel = foreign "GuiPanel" (Types.Rectangle.t @-> returning void)

  (*  Scroll Panel control *)
  let scroll_panel =
    foreign "GuiScrollPanel"
      (Types.Rectangle.t @-> Types.Rectangle.t @-> ptr Types.Vector2.t
      @-> returning Types.Rectangle.t)

  (* Basic controls set *)
  (*  Label control, shows text *)
  let label =
    foreign "GuiLabel" (Types.Rectangle.t @-> string @-> returning void)

  (*  Button control, returns true when clicked *)
  let button =
    foreign "GuiButton" (Types.Rectangle.t @-> string @-> returning bool)

  (*  Label button control, show true when clicked *)
  let label_button =
    foreign "GuiLabelButton" (Types.Rectangle.t @-> string @-> returning bool)

  (*  Image button control, returns true when clicked *)
  let image_button =
    foreign "GuiImageButton"
      (Types.Rectangle.t @-> string @-> Types.Texture.t @-> returning bool)

  (*  Image button extended control, returns true when clicked *)
  let image_button_ex =
    foreign "GuiImageButtonEx"
      (Types.Rectangle.t @-> string @-> Types.Texture.t @-> Types.Rectangle.t
     @-> returning bool)

  (*  Toggle Button control, returns true when active *)
  let toggle =
    foreign "GuiToggle"
      (Types.Rectangle.t @-> string @-> bool @-> returning bool)

  (*  Toggle Group control, returns active toggle index *)
  let toggle_group =
    foreign "GuiToggleGroup"
      (Types.Rectangle.t @-> string @-> int @-> returning int)

  (*  Check Box control, returns true when active *)
  let check_box =
    foreign "GuiCheckBox"
      (Types.Rectangle.t @-> string @-> bool @-> returning bool)

  (*  Combo Box control, returns selected item index *)
  let combo_box =
    foreign "GuiComboBox"
      (Types.Rectangle.t @-> string @-> int @-> returning int)

  (*  Dropdown Box control, returns selected item *)
  let dropdown_box =
    foreign "GuiDropdownBox"
      (Types.Rectangle.t @-> string @-> ptr int @-> bool @-> returning bool)

  (*  Spinner control, returns selected value *)
  let spinner =
    foreign "GuiSpinner"
      (Types.Rectangle.t @-> string @-> ptr int @-> int @-> int @-> bool
     @-> returning bool)

  (*  Value Box control, updates input text with numbers *)
  let value_box =
    foreign "GuiValueBox"
      (Types.Rectangle.t @-> string @-> ptr int @-> int @-> int @-> bool
     @-> returning bool)

  (*  Text Box control, updates input text *)
  let text_box =
    foreign "GuiTextBox"
      (Types.Rectangle.t @-> string @-> int @-> bool @-> returning bool)

  (*  Text Box control with multiple lines *)
  let text_box_multi =
    foreign "GuiTextBoxMulti"
      (Types.Rectangle.t @-> char @-> int @-> bool @-> returning bool)

  (*  Slider control, returns selected value *)
  let slider =
    foreign "GuiSlider"
      (Types.Rectangle.t @-> string @-> string @-> float @-> float @-> float
     @-> returning float)

  (*  Slider Bar control, returns selected value *)
  let slider_bar =
    foreign "GuiSliderBar"
      (Types.Rectangle.t @-> string @-> string @-> float @-> float @-> float
     @-> returning float)

  (*  Progress Bar control, shows current progress value *)
  let progress_bar =
    foreign "GuiProgressBar"
      (Types.Rectangle.t @-> string @-> string @-> float @-> float @-> float
     @-> returning float)

  (*  Status Bar control, shows info text *)
  let status_bar =
    foreign "GuiStatusBar" (Types.Rectangle.t @-> string @-> returning void)

  (*  Dummy control for placeholders *)
  let dummy_rec =
    foreign "GuiDummyRec" (Types.Rectangle.t @-> string @-> returning void)

  (*  Scroll Bar control *)
  let scroll_bar =
    foreign "GuiScrollBar"
      (Types.Rectangle.t @-> int @-> int @-> int @-> returning int)

  (*  Grid control *)
  let grid =
    foreign "GuiGrid"
      (Types.Rectangle.t @-> float @-> int @-> returning Types.Vector2.t)

  (* Advance controls set *)
  (*  List View control, returns selected list item index *)
  let list_view =
    foreign "GuiListView"
      (Types.Rectangle.t @-> string @-> ptr int @-> int @-> returning int)

  (*  List View with extended parameters *)
  let list_view_ex =
    foreign "GuiListViewEx"
      (Types.Rectangle.t @-> ptr string @-> int @-> ptr int @-> ptr int @-> int
     @-> returning int)

  (*  Message Box control, displays a message *)
  let message_box =
    foreign "GuiMessageBox"
      (Types.Rectangle.t @-> string @-> string @-> string @-> returning int)

  (*  Text Input Box control, ask for text *)
  let text_input_box =
    foreign "GuiTextInputBox"
      (Types.Rectangle.t @-> string @-> string @-> string @-> string
     @-> returning int)

  (*  Color Picker control (multiple color controls) *)
  let color_picker =
    foreign "GuiColorPicker"
      (Types.Rectangle.t @-> Types.Color.t @-> returning Types.Color.t)

  (*  Color Panel control *)
  let color_panel =
    foreign "GuiColorPanel"
      (Types.Rectangle.t @-> Types.Color.t @-> returning Types.Color.t)

  (*  Color Bar Alpha control *)
  let color_bar_alpha =
    foreign "GuiColorBarAlpha" (Types.Rectangle.t @-> float @-> returning float)

  (*  Color Bar Hue control *)
  let color_bar_hue =
    foreign "GuiColorBarHue" (Types.Rectangle.t @-> float @-> returning float)

  (* Styles loading functions *)
  (*  Load style file (.rgs) *)
  let load_style = foreign "GuiLoadStyle" (string @-> returning void)

  (*  Load style default over global style *)
  let load_style_default =
    foreign "GuiLoadStyleDefault" (void @-> returning void)
end
