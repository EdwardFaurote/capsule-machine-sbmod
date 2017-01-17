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


//activate uses a binary sort tree. Should be much quicker (not necessary, but I enjoy doing O(log n) stuff)
function activate()
	if player.consumeItem({name = self.activateItem, count = self.required}) then
		local capType = math.random(0,8)
		
		if capType = 4
			player.giveItem({item = "capsulepink", count = 1})
		elseif capType < 4
			if capType < 2
				if capType = 0
					player.giveItem({item = "capsuleblack", count = 1})
				else
					player.giveItem({item = "capsuleblue", count = 1})
				end
			else
				if capType = 3
					player.giveItem({item = "capsulegreen", count = 1})
				else
					player.giveItem({item = "capsuleorange", count = 1})
				end
			end
		else
			if capType < 7
				if capType = 5
					player.giveItem({item = "capsulepurple", count = 1})
				else
					player.giveItem({item = "capsulered", count = 1})
				end
			else
				if capType = 7
					player.giveItem({item = "capsuleteal", count = 1})
				else
					player.giveItem({item = "capsuleyellow", count = 1})
				end
			end
		end

	end
end
