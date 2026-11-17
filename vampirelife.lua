-- CristhHub for Vampire Life
-- Key system & ESP for Wolf Fragments

local repoName = "CristhHub"
local scriptVersion = "1.0"

print("Cargando CristhHub...")

-- Interfaz simple de Key System y ESP
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local KeyInput = Instance.new("TextBox")
local SubmitBtn = Instance.new("TextButton")

ScreenGui.Name = "CristhHubGui"
ScreenGui.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.Position = UDim2.new(0.5, -125, 0.5, -75)
MainFrame.Size = UDim2.new(0, 250, 0, 150)
MainFrame.Active = true
MainFrame.Draggable = true

Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Title.Size = UDim2.new(0, 250, 0, 35)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "CristhHub - Vampire Life"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16

KeyInput.Parent = MainFrame
KeyInput.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
KeyInput.Position = UDim2.new(0.1, 0, 0.35, 0)
KeyInput.Size = UDim2.new(0, 200, 0, 35)
KeyInput.Font = Enum.Font.SourceSans
KeyInput.PlaceholderText = "Ingresa la Key (1234)"
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.TextSize = 14

SubmitBtn.Parent = MainFrame
SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
SubmitBtn.Position = UDim2.new(0.1, 0, 0.7, 0)
SubmitBtn.Size = UDim2.new(0, 200, 0, 35)
SubmitBtn.Font = Enum.Font.SourceSansBold
SubmitBtn.Text = "Entrar"
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextSize = 14

SubmitBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == "1234" then
        Title.Text = "¡Key Correcta!"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
        task.wait(1)
        ScreenGui:Destroy()
        
        -- Activador de ESP para Wolf Fragments
        print("Buscando Wolf Fragments...")
        for _, obj in pairs(workspace:GetDescendants()) do
            if obj.Name == "WolfFragment" or obj.Name:lower():find("fragment") then
                local highlight = Instance.new("Highlight")
                highlight.Parent = obj
                highlight.FillColor = Color3.fromRGB(255, 0, 0)
            end
        end
    else
        Title.Text = "Key Incorrecta (Prueba 1234)"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    end
end)
