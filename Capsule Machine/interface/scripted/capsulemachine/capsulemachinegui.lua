function init()
  self.activateItem = config.getParameter("activateItem")
  self.required = config.getParameter("requiredCount")

  update()
end

function update(dt)
  local current = player.hasCountOfItem(self.activateItem)
  widget.setText("costLabel", string.format("%s / %s", current, self.required))
  widget.setFontColor("costLabel", current >= self.required and {255, 255, 255} or {255, 0, 0})
  widget.setButtonEnabled("activateButton", current >= self.required)
end

function activate()
  if player.consumeItem({name = self.activateItem, count = self.required}) then
    local capType = math.random(0,8)
	if capType <= 0 then
		player.giveItem({item = "capsuleblack", count = 1})
	elseif 	capType <= 1 then
		player.giveItem({item = "capsuleblue", count = 1})
	elseif 	capType <= 5 then
		player.giveItem({item = "capsulegreen", count = 1})
	elseif 	capType <= 3 then
		player.giveItem({item = "capsuleorange", count = 1})
	elseif 	capType <= 4 then
		player.giveItem({item = "capsulepink", count = 1})
	elseif 	capType <= 5 then
		player.giveItem({item = "capsulepurple", count = 1})
	elseif 	capType <= 6 then
		player.giveItem({item = "capsulered", count = 1})
	elseif 	capType <= 7 then
		player.giveItem({item = "capsuleteal", count = 1})
	elseif 	capType <= 8 then
		player.giveItem({item = "capsuleyellow", count = 1})
	end
  end
end