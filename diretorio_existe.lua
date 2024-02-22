-- Solicita o nome do diretório ao usuário
io.write("Digite o nome do diretório: ")
    local nomeDiretorio = io.read()
    
    -- Verifica se o diretório já existe
    local existeDiretorio = lfs.attributes(nomeDiretorio, "mode") == "directory"
    
    -- Se o diretório não existir, cria
    if not existeDiretorio then
        local success, errorMessage = lfs.mkdir(nomeDiretorio)
        if success then
            print("Diretório criado com sucesso!")
        else
            print("Erro ao criar diretório:", errorMessage)
        end
    else
        print("O diretório já existe.")
    end
    