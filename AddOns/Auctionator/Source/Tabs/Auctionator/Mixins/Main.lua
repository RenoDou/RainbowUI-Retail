AuctionatorConfigTabMixin = {}

function AuctionatorConfigTabMixin:OnLoad()
  Auctionator.Debug.Message("AuctionatorConfigTabMixin:OnLoad()")

  if Auctionator.Constants.IsLegacyAH then
    -- Reposition lower down translator entries so that they don't go past the
    -- bottom of the tab
    self.esES:SetPoint("TOPLEFT", self.deDE, "TOPLEFT", 300, 0)
    self.koKR:SetPoint("TOPLEFT", self.esES, "TOPLEFT", 300, 0)
  else
    self.ruRU:SetPoint("TOPLEFT", self.deDE, "TOPLEFT", 300, 0)
  end
end

function AuctionatorConfigTabMixin:OpenOptions()
  if Settings and SettingsPanel then
    Settings.OpenToCategory(AUCTIONATOR_L_ADDON_OPTIONS)
  else
    InterfaceOptionsFrame:Show()
    InterfaceOptionsFrame_OpenToCategory(AUCTIONATOR_L_CONFIG_BASIC_OPTIONS_CATEGORY)
  end
end
