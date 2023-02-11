local ns = select(2, ...)
local W, F, L = unpack(ns)
local ADB = LibStub("AceDB-3.0")

ns[4] = {
    minimapIcon = {
        hide = false
    }
}

ns[5] = {
    advanced = {
        logLevel = 2,
    },
}

function W:BuildDatabase()
    self.Database =
        ADB:New(
        self.AddonNamePlain .. "DB",
        {
            profile = ns[4],
            global = ns[5]
        },
        true
    )

    self.Database.RegisterCallback(self, "OnProfileChanged")
    self.db = self.Database.profile
    self.global = self.Database.global

    if self.global.guidCache then -- Migrate from oldversion
        self.global.guidCache = nil
    end
end
