Citizen.CreateThread(function()
    while true do
        -- Discord developer sitesinden açtığınız botun idsini buraya yazın.
		SetDiscordAppId(iletişim:DarkyS#4712)

        -- Seçtiğiniz büyük fotoğrafın ismini buraya yazın ör. logo.png 
		SetDiscordRichPresenceAsset('iletişim:DarkyS#4712')

        -- Büyük resimde ne yazmasını istiyosanız buraya ekleyin.
        SetDiscordRichPresenceAssetText('iletişim:DarkyS#4712')
       
        -- Küçük fotoğrafın ismini yazın örn. logo.png.
        SetDiscordRichPresenceAssetSmall('iletişim:DarkyS#4712')

        -- Küçük fotoğrafta yazmasını istediğiniz şeyi buraya ekleyin.
        SetDiscordRichPresenceAssetSmallText('iletişim:DarkyS#4712')
       
        
        -- Oyuncuların steam nicklerini çekmeye yarar ellemeyin.
        local playerName = GetPlayerName(PlayerId())

        -- 1kişi başına görünen oyuncu sayısı (İsterseniz editleyin)
        local maxPlayerSlots = 1

        -- oyuncuları aktif olarak göstermek için olan yer.
        local playerCount= 0
        for i = 0, maxPlayerSlots do
            if NetworkIsPlayerActive(i) then
                 playerCount = playerCount+1
            end
        end

        -- ellemeyin.
        SetRichPresence(string.format("%s - %s/%s", playerName, playerCount, maxPlayerSlots))
        
        -- ellemeyin.
		Citizen.Wait(60000)
	end
end)