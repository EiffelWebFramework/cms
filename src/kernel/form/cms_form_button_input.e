note
	description: "Summary description for {CMS_FORM_BUTTON_INPUT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CMS_FORM_BUTTON_INPUT

inherit
	CMS_FORM_INPUT

create
	make

feature -- Access

	input_type: STRING = "button"

end
