local v10 = game:GetService("TweenService")

local Skill = {}
Skill.__index = Skill

local me = game.Players.LocalPlayer
local Char = me.Character or me.CharacterAdded:Wait()
local Hit = Char

local v1090 = {
    Type = "DCNew",
    Char = Char,
    Hit  = Hit,
}

        local l_Char_21 = v1090.Char;
        local l_Hit_11 = v1090.Hit;
        local l_Character_54 = game.Players.LocalPlayer.Character;
        local l_l_Char_21_0 = l_Char_21;
        local l_l_Hit_11_0 = l_Hit_11;
        local l_PrimaryPart_117 = l_Char_21.PrimaryPart;
        local v27057 = true;
        if l_Char_21 ~= l_Character_54 then
            v27057 = l_Hit_11 == l_Character_54;
        end;

        local v27058 = {};
        local l_v27058_0 = v27058
        local l_l_l_Char_21_0_0 = l_l_Char_21_0
        local _ = function(v27061, v27062)

            if v27062 ~= 1 then
                for v27063, v27064 in pairs(l_v27058_0) do
                    v27063.Transparency = v27064;
                end;
                return;
            else
                for _, v27066 in pairs(l_l_l_Char_21_0_0:GetDescendants()) do
                    if v27066:IsA("BasePart") or v27066:IsA("Decal") then
                        if not l_v27058_0[v27066] then
                            l_v27058_0[v27066] = v27066.Transparency;
                        end;
                        v10:Create(v27066, TweenInfo.new(v27061, Enum.EasingStyle.Linear), {
                            Transparency = v27062
                        }):Play();
                    end;
                end;
                return;
            end;
        end;
        local l_NewDC_0 = game.ReplicatedStorage.Resources.NewDC;
        local l_vfx_2 = l_NewDC_0.vfx;
        local l_meshes_0 = l_NewDC_0.meshes;
        local v27071 = require(game.ReplicatedStorage.library);
        local l_Thrown_51 = workspace.Thrown;
        local l_v10_51 = v10;
        local l_PlayAttachment_6 = v27071.PlayAttachment;
        local l_Maid_20 = v27071.Maid;
        local _ = v27071.PlayTween;
        local _ = v27071.CamShake;
        local _ = v27071.PlayFlipBook;
        local l_dtwait_6 = v27071.dtwait;
        local _ = v27071.EFP;
        local _ = v27071.PlayMesh;
        local _ = v27071.Impact;
        local _ = v27071.GlassLight;
        local _ = v27071.RaiseZIndex;
        local l_Able_6 = v27071.Able;
        local _ = v27071.LifeScale;
        local _ = v27071.QuickFX;
        local _ = v27071.QuickWeld;
        local _ = v27071.Yield;
        local _ = v27071.ProcessPart;
        local _ = v27071.WeldObject;
        local _ = v27071.Bezier;
        local _ = require(game.ReplicatedStorage.MeshFlipbooks);
        local v27094 = setmetatable({}, Skill);
        v27094._maid = l_Maid_20.new();
        local _ = {};
        local v27096 = {};
        local v27097 = {};
        local v27098 = {};
        local v27099 = {};
        local v27100 = {};
        local v27101 = {};
        local v27102 = {};
        if v27057 then
            local l_l_NewDC_0_0 = l_NewDC_0
            local l_l_Char_21_1 = l_Char_21
            spawn(function()

                if not workspace:GetAttribute("ez") then
                    workspace:SetAttribute("ez", true);
                    local v27105 = {};
                    for _, v27107 in pairs(l_l_NewDC_0_0.meshes:GetDescendants()) do
                        if v27107:IsA("Decal") then
                            table.insert(v27105, v27107.Texture);
                        end;
                    end;
                    local l_Part_31 = Instance.new("Part");
                    l_Part_31.Name = "DecalPart";
                    l_Part_31.Anchored = true;
                    l_Part_31.Transparency = 0.5;
                    l_Part_31.CanCollide = false;
                    l_Part_31.CanQuery = false;
                    l_Part_31.CanTouch = false;
                    l_Part_31.CFrame = l_l_Char_21_1.PrimaryPart.CFrame * CFrame.new(0, -10, 0);
                    l_Part_31.Parent = l_l_Char_21_1;
                    game.Debris:AddItem(l_Part_31, 15);
                    for _, v27110 in pairs(v27105) do
                        local l_Decal_898 = Instance.new("Decal");
                        l_Decal_898.Parent = l_Part_31;
                        l_Decal_898.Texture = v27110;
                        task.wait(0.0065);
                    end;
                end;
            end);
        end;
        for _, v27113 in pairs(l_l_Char_21_0:GetDescendants()) do
            if v27113:IsA("ParticleEmitter") or v27113:IsA("Trail") or v27113:IsA("PointLight") or v27113:IsA("Beam") then
                v27101[v27113] = v27113.Enabled;
            end;
        end;
        for _, v27115 in pairs(l_NewDC_0.ParentMeVictim:GetChildren()) do
            local v27116 = l_l_Char_21_0[tostring(v27115)];
            for _, v27118 in pairs(v27115:GetChildren()) do
                local v27119 = v27118:Clone();
                v27119.Parent = v27116;
                table.insert(v27102, v27119);
                if not v27118.Name:find("eye") then
                    table.insert(v27100, v27119);
                    if #v27119:GetChildren() > 0 then
                        for _, v27121 in pairs(v27119:GetChildren()) do
                            v27098[v27121] = {
                                Attachment0 = tostring(v27121.Attachment0), 
                                Attachment1 = tostring(v27121.Attachment1)
                            };
                        end;
                    end;
                end;
            end;
        end;
        for _, v27123 in pairs(l_NewDC_0.ParentMe:GetChildren()) do
            local v27124 = l_l_Char_21_0[tostring(v27123)];
            for _, v27126 in pairs(v27123:GetChildren()) do
                local v27127 = v27126:Clone();
                v27127.Parent = v27124;
                if v27127:IsA("Attachment") and v27127.Name:find("hand trail") then
                    table.insert(v27096, v27127);
                    if #v27127:GetChildren() > 0 then
                        for _, v27129 in pairs(v27127:GetChildren()) do
                            v27097[v27129] = {
                                Attachment0 = tostring(v27129.Attachment0), 
                                Attachment1 = tostring(v27129.Attachment1)
                            };
                        end;
                    end;
                end;
            end;
        end;
        for v27130, v27131 in pairs(v27098) do
            v27130.Attachment0 = v27100[v27131.Attachment0];
            v27130.Attachment1 = v27100[v27131.Attachment1];
        end;
        for v27132, v27133 in pairs(v27097) do
            v27132.Attachment0 = v27096[v27133.Attachment0];
            v27132.Attachment1 = v27096[v27133.Attachment1];
        end;
        for _, v27135 in pairs(l_l_Char_21_0:GetDescendants()) do
            if (v27135:IsA("ParticleEmitter") or v27135:IsA("Trail") or v27135:IsA("PointLight") or v27135:IsA("Beam")) and v27101[v27135] == nil then
                table.insert(v27099, v27135);
            end;
        end;
        local function v27141(v27136, v27137, v27138)
            for _, v27140 in pairs(v27136:GetDescendants()) do
                if v27140:IsA(v27138) then
                    v27140.Enabled = v27137;
                end;
            end;
        end;
        local l_l_v10_51_0 = l_v10_51
        local _ = function(v27143, v27144, v27145)

            task.spawn(function()

                if not v27143:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27143, v27144, {
                        CFrame = v27145.cframe, 
                        Size = v27145.size, 
                        Transparency = v27145.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27143, v27144, {
                        CFrame = v27145.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27143:FindFirstChildWhichIsA("SpecialMesh"), v27144, {
                        Scale = v27145.scale
                    }):Play();
                end;
                for _, v27147 in pairs(v27143:GetChildren()) do
                    if v27147:IsA("Decal") then
                        l_l_v10_51_0:Create(v27147, v27144, {
                            Transparency = v27145.transparency2
                        }):Play();
                    end;
                end;
            end);
        end;
        local _ = function(v27149)
            local l_twtype_24 = v27149.twtype;
            local l_childtype_24 = v27149.childtype;
            local l_newvalues_24 = v27149.newvalues;
            local l_amount_29 = v27149.amount;
            local l_particle_24 = v27149.particle;
            local l_name_24 = v27149.name;
            task.spawn(function()

                for _, v27157 in pairs(l_particle_24:GetChildren()) do
                    if l_name_24 then
                        if v27157:IsA(l_childtype_24) and v27157.name == l_name_24 then
                            local v27158 = {};
                            local v27159 = {};
                            task.spawn(function()

                                for _ = 1, l_amount_29 do
                                    for _, v27162 in pairs(v27157[l_twtype_24].Keypoints) do
                                        table.insert(v27158, v27162);
                                    end;
                                    for _, v27164 in pairs(v27158) do
                                        local v27165 = NumberSequenceKeypoint.new(v27164.Time + l_newvalues_24[1], v27164.Value + l_newvalues_24[2], v27164.Envelope + l_newvalues_24[3]);
                                        table.insert(v27159, v27165);
                                    end;
                                    v27157[l_twtype_24] = NumberSequence.new(v27159);
                                    table.clear(v27159);
                                    table.clear(v27158);
                                    task.wait();
                                end;
                            end);
                        end;
                    elseif v27157:IsA(l_childtype_24) then
                        local v27166 = {};
                        local v27167 = {};
                        task.spawn(function()

                            for _ = 1, l_amount_29 do
                                for _, v27170 in pairs(v27157[l_twtype_24].Keypoints) do
                                    table.insert(v27166, v27170);
                                end;
                                for _, v27172 in pairs(v27166) do
                                    local v27173 = NumberSequenceKeypoint.new(v27172.Time + l_newvalues_24[1], v27172.Value + l_newvalues_24[2], v27172.Envelope + l_newvalues_24[3]);
                                    table.insert(v27167, v27173);
                                end;
                                v27157[l_twtype_24] = NumberSequence.new(v27167);
                                table.clear(v27167);
                                table.clear(v27166);
                                task.wait();
                            end;
                        end);
                    end;
                end;
            end);
        end;
        local l_l_Thrown_51_0 = l_Thrown_51
        local l_v27094_0 = v27094
        local function v27182(v27177)

            local v27178 = v27177.mesh:Clone();
            v27178.Parent = l_l_Thrown_51_0;
            l_v27094_0._maid:give(v27178);
            v27178.CFrame = v27177.cframe;
            if v27178:FindFirstChildWhichIsA("SpecialMesh") and v27177.scale then
                v27178:FindFirstChildWhichIsA("SpecialMesh").Scale = v27177.scale;
            elseif v27177.size then
                v27178.Size = v27177.size;
            end;
            local v27179 = nil;
            for _, v27181 in pairs(v27178:GetChildren()) do
                if v27181:IsA("Decal") then
                    v27181.Transparency = v27177.transparency;
                    v27179 = true;
                end;
            end;
            if not v27179 then
                v27178.Transparency = v27177.transparency;
            end;
            return v27178;
        end;
        local l_l_l_Char_21_0_1 = l_l_Char_21_0
        local l_v27182_0 = v27182
        local l_l_meshes_0_0 = l_meshes_0
        local l_l_dtwait_6_0 = l_dtwait_6
        local l_l_vfx_2_0 = l_vfx_2
        local l_v27141_0 = v27141
        local l_l_l_Hit_11_0_0 = l_l_Hit_11_0
        local l_v27099_0 = v27099
        local l_l_Able_6_0 = l_Able_6
        local l_v27102_0 = v27102
        local l_l_PlayAttachment_6_0 = l_PlayAttachment_6
        local l_l_NewDC_0_1 = l_NewDC_0
        task.spawn(function()

            task.spawn(function()

                l_l_l_Char_21_0_1["Right Arm"]["arm smoke 1"]["arm smoke"].Enabled = true;
                l_l_l_Char_21_0_1.Head.eye.ParticleEmitter.Enabled = true;
                l_l_l_Char_21_0_1.Head.eye1.ParticleEmitter.Enabled = true;
                local v27195 = l_v27182_0({
                    mesh = l_l_meshes_0_0["first wind mesh"], 
                    cframe = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(-9, 0, -3) * CFrame.Angles(0, -2.059488517353309, 0), 
                    transparency = 1, 
                    size = Vector3.new(14.050000190734863, 12.5600004196167, 0, 0)
                });
                local v27196 = TweenInfo.new(0.7, Enum.EasingStyle.Sine);
                local v27197 = {
                    cframe = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -2.792526803190927), 
                    transparency1 = 0.9, 
                    size = Vector3.new(14.050000190734863, 12.5600004196167, 21.701000213623047, 0)
                };
                task.spawn(function()

                    if not v27195:FindFirstChildWhichIsA("SpecialMesh") then
                        l_l_v10_51_0:Create(v27195, v27196, {
                            CFrame = v27197.cframe, 
                            Size = v27197.size, 
                            Transparency = v27197.transparency1
                        }):Play();
                    else
                        l_l_v10_51_0:Create(v27195, v27196, {
                            CFrame = v27197.cframe
                        }):Play();
                        l_l_v10_51_0:Create(v27195:FindFirstChildWhichIsA("SpecialMesh"), v27196, {
                            Scale = v27197.scale
                        }):Play();
                    end;
                    for _, v27199 in pairs(v27195:GetChildren()) do
                        if v27199:IsA("Decal") then
                            l_l_v10_51_0:Create(v27199, v27196, {
                                Transparency = v27197.transparency2
                            }):Play();
                        end;
                    end;
                end);
                task.delay(0.4, function()

                    local l_v27195_0 = v27195;
                    local v27201 = TweenInfo.new(0.2, Enum.EasingStyle.Sine);
                    local v27202 = {
                        cframe = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -2.792526803190927), 
                        transparency1 = 1, 
                        size = Vector3.new(14.050000190734863, 12.5600004196167, 21.701000213623047, 0)
                    };
                    task.spawn(function()

                        if not l_v27195_0:FindFirstChildWhichIsA("SpecialMesh") then
                            l_l_v10_51_0:Create(l_v27195_0, v27201, {
                                CFrame = v27202.cframe, 
                                Size = v27202.size, 
                                Transparency = v27202.transparency1
                            }):Play();
                        else
                            l_l_v10_51_0:Create(l_v27195_0, v27201, {
                                CFrame = v27202.cframe
                            }):Play();
                            l_l_v10_51_0:Create(l_v27195_0:FindFirstChildWhichIsA("SpecialMesh"), v27201, {
                                Scale = v27202.scale
                            }):Play();
                        end;
                        for _, v27204 in pairs(l_v27195_0:GetChildren()) do
                            if v27204:IsA("Decal") then
                                l_l_v10_51_0:Create(v27204, v27201, {
                                    Transparency = v27202.transparency2
                                }):Play();
                            end;
                        end;
                    end);
                end);
            end);
            l_l_dtwait_6_0(0.83);
            local v27205 = l_l_vfx_2_0["wind beams air"]:Clone();
            v27205.Parent = l_l_Thrown_51_0;
            v27205.CFrame = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(0, 4, -7.7) * CFrame.Angles(0.6118251692866122, 0, 0);
            l_v27094_0._maid:give(v27205);
            l_v27141_0(v27205, true, "Beam");
            l_l_v10_51_0:Create(v27205, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {
                CFrame = v27205.CFrame * CFrame.new(4, -1.5, -49) * CFrame.Angles(0.24434609527920614, 0, 3.141592653589793)
            }):Play();
            task.delay(0.26, function()

                l_l_v10_51_0:Create(v27205, TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                    CFrame = v27205.CFrame * CFrame.new(8, 0, -50) * CFrame.Angles(0.24434609527920614, 0, 3.141592653589793)
                }):Play();
            end);
            local v27206 = 255;
            task.spawn(function()

                for v27207 = 1, 75 do
                    v27206 = v27206 - 2.8;
                    for _, v27209 in pairs(v27205:GetDescendants()) do
                        if v27209:IsA("Beam") then
                            v27209.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, Color3.fromRGB(v27206, v27206, v27206)), 
                                ColorSequenceKeypoint.new(1, Color3.fromRGB(v27206, v27206, v27206))
                            });
                        end;
                    end;
                    if v27207 == 75 then
                        l_v27141_0(v27205, false, "Beam");
                    end;
                    l_l_dtwait_6_0(0.01);
                end;
            end);
            local v27210 = l_v27182_0({
                mesh = l_l_meshes_0_0["first punch impact"], 
                cframe = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(0, 2, -10) * CFrame.Angles(-0.767944870877505, -0.10471975511965978, 0.15707963267948966), 
                transparency = 0, 
                size = Vector3.new(40, 0.0010000000474974513, 40, 0)
            });
            local v27211 = TweenInfo.new(0.2, Enum.EasingStyle.Sine);
            local v27212 = {
                cframe = v27210.CFrame * CFrame.new(0, 25, 0), 
                transparency1 = 1, 
                size = Vector3.new(0, 50, 0, 0)
            };
            local l_v27211_0 = v27211
            local l_v27212_0 = v27212
            task.spawn(function()

                if not v27210:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27210, l_v27211_0, {
                        CFrame = l_v27212_0.cframe, 
                        Size = l_v27212_0.size, 
                        Transparency = l_v27212_0.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27210, l_v27211_0, {
                        CFrame = l_v27212_0.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27210:FindFirstChildWhichIsA("SpecialMesh"), l_v27211_0, {
                        Scale = l_v27212_0.scale
                    }):Play();
                end;
                for _, v27216 in pairs(v27210:GetChildren()) do
                    if v27216:IsA("Decal") then
                        l_l_v10_51_0:Create(v27216, l_v27211_0, {
                            Transparency = l_v27212_0.transparency2
                        }):Play();
                    end;
                end;
            end);
            v27211 = l_v27182_0({
                mesh = l_l_meshes_0_0["first punch mesh 1"], 
                cframe = l_l_l_Hit_11_0_0.Torso.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0.12217304763960307, 0.0859400123682008, -3.071011538639142), 
                transparency = 1, 
                size = Vector3.new(64.09100341796875, 47.55799865722656, 0, 0)
            });
            v27212 = TweenInfo.new(1, Enum.EasingStyle.Linear);
            local v27217 = {
                size = Vector3.new(55.07400131225586, 44.88600158691406, 155.73199462890625, 0)
            };
            local l_v27212_1 = v27212
            local l_v27217_0 = v27217
            task.spawn(function()

                if not v27211:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27211, l_v27212_1, {
                        CFrame = l_v27217_0.cframe, 
                        Size = l_v27217_0.size, 
                        Transparency = l_v27217_0.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27211, l_v27212_1, {
                        CFrame = l_v27217_0.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27211:FindFirstChildWhichIsA("SpecialMesh"), l_v27212_1, {
                        Scale = l_v27217_0.scale
                    }):Play();
                end;
                for _, v27221 in pairs(v27211:GetChildren()) do
                    if v27221:IsA("Decal") then
                        l_l_v10_51_0:Create(v27221, l_v27212_1, {
                            Transparency = l_v27217_0.transparency2
                        }):Play();
                    end;
                end;
            end);
            v27212 = TweenInfo.new(0.2, Enum.EasingStyle.Linear);
            v27217 = {
                transparency1 = 0.95
            };
            local l_v27212_2 = v27212
            local l_v27217_1 = v27217
            task.spawn(function()

                if not v27211:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27211, l_v27212_2, {
                        CFrame = l_v27217_1.cframe, 
                        Size = l_v27217_1.size, 
                        Transparency = l_v27217_1.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27211, l_v27212_2, {
                        CFrame = l_v27217_1.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27211:FindFirstChildWhichIsA("SpecialMesh"), l_v27212_2, {
                        Scale = l_v27217_1.scale
                    }):Play();
                end;
                for _, v27225 in pairs(v27211:GetChildren()) do
                    if v27225:IsA("Decal") then
                        l_l_v10_51_0:Create(v27225, l_v27212_2, {
                            Transparency = l_v27217_1.transparency2
                        }):Play();
                    end;
                end;
            end);
            task.delay(0.1, function()

                local l_v27211_1 = v27211;
                local v27227 = TweenInfo.new(0.2, Enum.EasingStyle.Linear);
                local v27228 = {
                    cframe = v27211.CFrame * CFrame.new(5, 0, -45) * CFrame.Angles(0, 0, 3.141592653589793)
                };
                local l_l_v27211_1_0 = l_v27211_1
                local l_v27227_0 = v27227
                local l_v27228_0 = v27228
                task.spawn(function()

                    if not l_l_v27211_1_0:FindFirstChildWhichIsA("SpecialMesh") then
                        l_l_v10_51_0:Create(l_l_v27211_1_0, l_v27227_0, {
                            CFrame = l_v27228_0.cframe, 
                            Size = l_v27228_0.size, 
                            Transparency = l_v27228_0.transparency1
                        }):Play();
                    else
                        l_l_v10_51_0:Create(l_l_v27211_1_0, l_v27227_0, {
                            CFrame = l_v27228_0.cframe
                        }):Play();
                        l_l_v10_51_0:Create(l_l_v27211_1_0:FindFirstChildWhichIsA("SpecialMesh"), l_v27227_0, {
                            Scale = l_v27228_0.scale
                        }):Play();
                    end;
                    for _, v27233 in pairs(l_l_v27211_1_0:GetChildren()) do
                        if v27233:IsA("Decal") then
                            l_l_v10_51_0:Create(v27233, l_v27227_0, {
                                Transparency = l_v27228_0.transparency2
                            }):Play();
                        end;
                    end;
                end);
                l_l_dtwait_6_0(0.2);
                l_v27211_1 = v27211;
                v27227 = TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
                v27228 = {
                    cframe = v27211.CFrame * CFrame.new(5, 0, -15) * CFrame.Angles(0, 0, 3.141592653589793)
                };
                local l_l_v27211_1_1 = l_v27211_1
                local l_v27227_1 = v27227
                local l_v27228_1 = v27228
                task.spawn(function()

                    if not l_l_v27211_1_1:FindFirstChildWhichIsA("SpecialMesh") then
                        l_l_v10_51_0:Create(l_l_v27211_1_1, l_v27227_1, {
                            CFrame = l_v27228_1.cframe, 
                            Size = l_v27228_1.size, 
                            Transparency = l_v27228_1.transparency1
                        }):Play();
                    else
                        l_l_v10_51_0:Create(l_l_v27211_1_1, l_v27227_1, {
                            CFrame = l_v27228_1.cframe
                        }):Play();
                        l_l_v10_51_0:Create(l_l_v27211_1_1:FindFirstChildWhichIsA("SpecialMesh"), l_v27227_1, {
                            Scale = l_v27228_1.scale
                        }):Play();
                    end;
                    for _, v27238 in pairs(l_l_v27211_1_1:GetChildren()) do
                        if v27238:IsA("Decal") then
                            l_l_v10_51_0:Create(v27238, l_v27227_1, {
                                Transparency = l_v27228_1.transparency2
                            }):Play();
                        end;
                    end;
                end);
                l_v27211_1 = v27211;
                v27227 = TweenInfo.new(0.45, Enum.EasingStyle.Sine);
                v27228 = {
                    transparency1 = 1, 
                    size = Vector3.new(64.09100341796875, 47.55799865722656, 211.73399353027344, 0)
                };
                task.spawn(function()

                    if not l_v27211_1:FindFirstChildWhichIsA("SpecialMesh") then
                        l_l_v10_51_0:Create(l_v27211_1, v27227, {
                            CFrame = v27228.cframe, 
                            Size = v27228.size, 
                            Transparency = v27228.transparency1
                        }):Play();
                    else
                        l_l_v10_51_0:Create(l_v27211_1, v27227, {
                            CFrame = v27228.cframe
                        }):Play();
                        l_l_v10_51_0:Create(l_v27211_1:FindFirstChildWhichIsA("SpecialMesh"), v27227, {
                            Scale = v27228.scale
                        }):Play();
                    end;
                    for _, v27240 in pairs(l_v27211_1:GetChildren()) do
                        if v27240:IsA("Decal") then
                            l_l_v10_51_0:Create(v27240, v27227, {
                                Transparency = v27228.transparency2
                            }):Play();
                        end;
                    end;
                end);
            end);
            v27212 = l_v27182_0({
                mesh = l_l_meshes_0_0["first punch mesh 2"], 
                cframe = l_l_l_Hit_11_0_0.Torso.CFrame * CFrame.new(0, 0, 7) * CFrame.Angles(-1.3337631610815466, 0.0859400123682008, -3.175731293758802), 
                transparency = 1, 
                size = Vector3.new(50, 0.0010000000474974513, 50, 0)
            });
            v27217 = TweenInfo.new(1, Enum.EasingStyle.Linear);
            local v27241 = {
                size = Vector3.new(50.4900016784668, 150, 50.2599983215332, 0)
            };
            local l_v27217_2 = v27217
            local l_v27241_0 = v27241
            task.spawn(function()

                if not v27212:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27212, l_v27217_2, {
                        CFrame = l_v27241_0.cframe, 
                        Size = l_v27241_0.size, 
                        Transparency = l_v27241_0.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27212, l_v27217_2, {
                        CFrame = l_v27241_0.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27212:FindFirstChildWhichIsA("SpecialMesh"), l_v27217_2, {
                        Scale = l_v27241_0.scale
                    }):Play();
                end;
                for _, v27245 in pairs(v27212:GetChildren()) do
                    if v27245:IsA("Decal") then
                        l_l_v10_51_0:Create(v27245, l_v27217_2, {
                            Transparency = l_v27241_0.transparency2
                        }):Play();
                    end;
                end;
            end);
            v27217 = TweenInfo.new(0.2, Enum.EasingStyle.Linear);
            v27241 = {
                transparency1 = 0.5
            };
            local l_v27217_3 = v27217
            local l_v27241_1 = v27241
            task.spawn(function()

                if not v27212:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27212, l_v27217_3, {
                        CFrame = l_v27241_1.cframe, 
                        Size = l_v27241_1.size, 
                        Transparency = l_v27241_1.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27212, l_v27217_3, {
                        CFrame = l_v27241_1.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27212:FindFirstChildWhichIsA("SpecialMesh"), l_v27217_3, {
                        Scale = l_v27241_1.scale
                    }):Play();
                end;
                for _, v27249 in pairs(v27212:GetChildren()) do
                    if v27249:IsA("Decal") then
                        l_l_v10_51_0:Create(v27249, l_v27217_3, {
                            Transparency = l_v27241_1.transparency2
                        }):Play();
                    end;
                end;
            end);
            task.delay(0.1, function()

                local l_v27212_3 = v27212;
                local v27251 = TweenInfo.new(0.2, Enum.EasingStyle.Linear);
                local v27252 = {
                    cframe = v27212.CFrame * CFrame.new(3, -30, 0) * CFrame.Angles(0, 3.141592653589793, 0)
                };
                local l_l_v27212_3_0 = l_v27212_3
                local l_v27251_0 = v27251
                local l_v27252_0 = v27252
                task.spawn(function()

                    if not l_l_v27212_3_0:FindFirstChildWhichIsA("SpecialMesh") then
                        l_l_v10_51_0:Create(l_l_v27212_3_0, l_v27251_0, {
                            CFrame = l_v27252_0.cframe, 
                            Size = l_v27252_0.size, 
                            Transparency = l_v27252_0.transparency1
                        }):Play();
                    else
                        l_l_v10_51_0:Create(l_l_v27212_3_0, l_v27251_0, {
                            CFrame = l_v27252_0.cframe
                        }):Play();
                        l_l_v10_51_0:Create(l_l_v27212_3_0:FindFirstChildWhichIsA("SpecialMesh"), l_v27251_0, {
                            Scale = l_v27252_0.scale
                        }):Play();
                    end;
                    for _, v27257 in pairs(l_l_v27212_3_0:GetChildren()) do
                        if v27257:IsA("Decal") then
                            l_l_v10_51_0:Create(v27257, l_v27251_0, {
                                Transparency = l_v27252_0.transparency2
                            }):Play();
                        end;
                    end;
                end);
                l_l_dtwait_6_0(0.2);
                l_v27212_3 = v27212;
                v27251 = TweenInfo.new(0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
                v27252 = {
                    cframe = v27212.CFrame * CFrame.new(3, -10, 0) * CFrame.Angles(0, 3.141592653589793, 0)
                };
                local l_l_v27212_3_1 = l_v27212_3
                local l_v27251_1 = v27251
                local l_v27252_1 = v27252
                task.spawn(function()

                    if not l_l_v27212_3_1:FindFirstChildWhichIsA("SpecialMesh") then
                        l_l_v10_51_0:Create(l_l_v27212_3_1, l_v27251_1, {
                            CFrame = l_v27252_1.cframe, 
                            Size = l_v27252_1.size, 
                            Transparency = l_v27252_1.transparency1
                        }):Play();
                    else
                        l_l_v10_51_0:Create(l_l_v27212_3_1, l_v27251_1, {
                            CFrame = l_v27252_1.cframe
                        }):Play();
                        l_l_v10_51_0:Create(l_l_v27212_3_1:FindFirstChildWhichIsA("SpecialMesh"), l_v27251_1, {
                            Scale = l_v27252_1.scale
                        }):Play();
                    end;
                    for _, v27262 in pairs(l_l_v27212_3_1:GetChildren()) do
                        if v27262:IsA("Decal") then
                            l_l_v10_51_0:Create(v27262, l_v27251_1, {
                                Transparency = l_v27252_1.transparency2
                            }):Play();
                        end;
                    end;
                end);
                l_v27212_3 = v27212;
                v27251 = TweenInfo.new(0.55, Enum.EasingStyle.Sine);
                v27252 = {
                    size = Vector3.new(50.4900016784668, 150, 50.2599983215332, 0), 
                    transparency1 = 1
                };
                task.spawn(function()

                    if not l_v27212_3:FindFirstChildWhichIsA("SpecialMesh") then
                        l_l_v10_51_0:Create(l_v27212_3, v27251, {
                            CFrame = v27252.cframe, 
                            Size = v27252.size, 
                            Transparency = v27252.transparency1
                        }):Play();
                    else
                        l_l_v10_51_0:Create(l_v27212_3, v27251, {
                            CFrame = v27252.cframe
                        }):Play();
                        l_l_v10_51_0:Create(l_v27212_3:FindFirstChildWhichIsA("SpecialMesh"), v27251, {
                            Scale = v27252.scale
                        }):Play();
                    end;
                    for _, v27264 in pairs(l_v27212_3:GetChildren()) do
                        if v27264:IsA("Decal") then
                            l_l_v10_51_0:Create(v27264, v27251, {
                                Transparency = v27252.transparency2
                            }):Play();
                        end;
                    end;
                end);
            end);
            l_l_dtwait_6_0(0.4);
            v27217 = l_v27182_0({
                mesh = l_l_meshes_0_0["first punch fall mesh"], 
                cframe = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(0.13, 3.3, -4.9) * CFrame.Angles(0, 0, 0), 
                transparency = 0, 
                size = Vector3.new(0, 20, 0, 0)
            });
            v27241 = TweenInfo.new(0.11, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
            local v27265 = {
                size = Vector3.new(25, 1, 25, 0), 
                transparency1 = 1, 
                CFrame = v27217.CFrame * CFrame.new(0, 8, 0)
            };
            local l_v27241_2 = v27241
            local l_v27265_0 = v27265
            task.spawn(function()

                if not v27217:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27217, l_v27241_2, {
                        CFrame = l_v27265_0.cframe, 
                        Size = l_v27265_0.size, 
                        Transparency = l_v27265_0.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27217, l_v27241_2, {
                        CFrame = l_v27265_0.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27217:FindFirstChildWhichIsA("SpecialMesh"), l_v27241_2, {
                        Scale = l_v27265_0.scale
                    }):Play();
                end;
                for _, v27269 in pairs(v27217:GetChildren()) do
                    if v27269:IsA("Decal") then
                        l_l_v10_51_0:Create(v27269, l_v27241_2, {
                            Transparency = l_v27265_0.transparency2
                        }):Play();
                    end;
                end;
            end);
            l_l_dtwait_6_0(0.55);
            for _, v27271 in pairs(l_v27099_0) do
                v27271.Enabled = true;
            end;
            task.delay(0.5, function()

                for _, v27273 in pairs(l_v27099_0) do
                    v27273.Enabled = false;
                end;
            end);
            l_l_dtwait_6_0(0.05);
            v27241 = l_l_vfx_2_0.lines1:Clone();
            v27241.Parent = l_l_Thrown_51_0;
            v27241.CFrame = workspace.CurrentCamera.CFrame;
            v27241.CFrame = v27241.CFrame * CFrame.new(20, 43, -150) * CFrame.Angles(1.9896753472735358, 0, 0.12217304763960307);
            l_v27094_0._maid:give(v27241);
            l_l_Able_6_0({
                FX = v27241, 
                On = true
            });
            l_l_dtwait_6_0(0.83);
            for _, v27275 in pairs(l_v27102_0) do
                for _, v27277 in pairs(v27275:GetDescendants()) do
                    if v27277:IsA("ParticleEmitter") then
                        v27277:Emit(v27277:GetAttribute("EmitCount"));
                    end;
                end;
            end;
            l_l_dtwait_6_0(0.5);
            task.delay(0.1, function()

                local v27278 = l_l_vfx_2_0["jump circles"]:Clone();
                v27278.Parent = l_l_Thrown_51_0;
                v27278.CFrame = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(2, 0, -7) * CFrame.Angles(0, 0, 0);
                l_v27094_0._maid:give(v27278);
                l_l_PlayAttachment_6_0(v27278);
            end);
            v27265 = l_v27182_0({
                mesh = l_l_meshes_0_0["jump mesh"], 
                cframe = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(-9, 0, 0) * CFrame.Angles(0.6412863270602766, 0, 0.10124654990819106), 
                transparency = 0.95, 
                size = Vector3.new(36.52000045776367, 37.60100173950195, 0, 0)
            });
            local v27279 = TweenInfo.new(0.9, Enum.EasingStyle.Linear);
            local v27280 = {
                size = Vector3.new(36.52000045776367, 37.60100173950195, 135.83700561523438, 0), 
                transparency1 = 1, 
                cframe = v27265.CFrame * CFrame.new(0, 0, -38) * CFrame.Angles(0, 0, 3.141592653589793)
            };
            local l_v27279_0 = v27279
            local l_v27280_0 = v27280
            task.spawn(function()

                if not v27265:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27265, l_v27279_0, {
                        CFrame = l_v27280_0.cframe, 
                        Size = l_v27280_0.size, 
                        Transparency = l_v27280_0.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27265, l_v27279_0, {
                        CFrame = l_v27280_0.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27265:FindFirstChildWhichIsA("SpecialMesh"), l_v27279_0, {
                        Scale = l_v27280_0.scale
                    }):Play();
                end;
                for _, v27284 in pairs(v27265:GetChildren()) do
                    if v27284:IsA("Decal") then
                        l_l_v10_51_0:Create(v27284, l_v27279_0, {
                            Transparency = l_v27280_0.transparency2
                        }):Play();
                    end;
                end;
            end);
            v27279 = l_l_vfx_2_0.lines1:Clone();
            v27241.Parent = l_l_Thrown_51_0;
            v27241.CFrame = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(8.7, -2.75, 4) * CFrame.Angles(0, 0, 0);
            l_v27094_0._maid:give(v27241);
            l_l_PlayAttachment_6_0(v27279);
            v27280 = l_v27182_0({
                mesh = l_l_meshes_0_0["jump mesh 1"], 
                cframe = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(0, 0, -6.2) * CFrame.Angles(0, -1.5707963267948966, -0.5578595888149476), 
                transparency = 0
            });
            local v27285 = TweenInfo.new(0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.Out);
            local v27286 = {
                cframe = v27280.CFrame * CFrame.new(-89.7, 14.4, 1.3) * CFrame.Angles(3.141592653589793, 0, 0.17453292519943295)
            };
            local l_v27285_0 = v27285
            local l_v27286_0 = v27286
            task.spawn(function()

                if not v27280:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27280, l_v27285_0, {
                        CFrame = l_v27286_0.cframe, 
                        Size = l_v27286_0.size, 
                        Transparency = l_v27286_0.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27280, l_v27285_0, {
                        CFrame = l_v27286_0.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27280:FindFirstChildWhichIsA("SpecialMesh"), l_v27285_0, {
                        Scale = l_v27286_0.scale
                    }):Play();
                end;
                for _, v27290 in pairs(v27280:GetChildren()) do
                    if v27290:IsA("Decal") then
                        l_l_v10_51_0:Create(v27290, l_v27285_0, {
                            Transparency = l_v27286_0.transparency2
                        }):Play();
                    end;
                end;
            end);
            v27285 = TweenInfo.new(0.8, Enum.EasingStyle.Linear);
            v27286 = {
                transparency2 = 1
            };
            local l_v27285_1 = v27285
            local l_v27286_1 = v27286
            task.spawn(function()

                if not v27280:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27280, l_v27285_1, {
                        CFrame = l_v27286_1.cframe, 
                        Size = l_v27286_1.size, 
                        Transparency = l_v27286_1.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27280, l_v27285_1, {
                        CFrame = l_v27286_1.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27280:FindFirstChildWhichIsA("SpecialMesh"), l_v27285_1, {
                        Scale = l_v27286_1.scale
                    }):Play();
                end;
                for _, v27294 in pairs(v27280:GetChildren()) do
                    if v27294:IsA("Decal") then
                        l_l_v10_51_0:Create(v27294, l_v27285_1, {
                            Transparency = l_v27286_1.transparency2
                        }):Play();
                    end;
                end;
            end);
            v27285 = l_l_NewDC_0_1.ScreenGui:Clone();
            v27286 = {};
            local v27295 = {};
            for _, v27297 in pairs(v27285:GetDescendants()) do
                if v27297:IsA("ImageLabel") then
                    v27286[v27297] = v27297.Size;
                    v27295[v27297] = v27297.Position;
                    v27297.Size = UDim2.new(0, 0, 0, 1);
                    v27297.Position = UDim2.new(0, 0, 0, 0);
                end;
            end;
            v27285.Parent = game.Players.LocalPlayer.PlayerGui;
            l_l_dtwait_6_0(0.8);
            v27241:Destroy();
            for v27298, v27299 in pairs(v27286) do
                v27298.Size = v27299;
            end;
            for v27300, v27301 in pairs(v27295) do
                v27300.Position = v27301;
            end;
            for _, v27303 in pairs(v27285:GetDescendants()) do
                if v27303:IsA("ImageLabel") then
                    l_l_v10_51_0:Create(v27303, TweenInfo.new(0.6), {
                        ImageTransparency = 0
                    }):Play();
                end;
            end;
            l_v27094_0._maid:give(v27285);
            local v27304 = l_l_vfx_2_0["fake punch wind"]:Clone();
            v27304.Parent = l_l_Thrown_51_0;
            v27304.CFrame = l_l_l_Hit_11_0_0.Torso.CFrame * CFrame.new(0, 0, 0);
            v27304.CFrame = v27304.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(-0.03490658503988659, 3.141592653589793, 0);
            l_v27094_0._maid:give(v27304);
            l_v27141_0(v27304, true, "Beam");
            local v27305 = 0;
            task.spawn(function()

                for v27306 = 1, 30 do
                    v27305 = v27305 + 8;
                    for _, v27308 in pairs(v27304:GetDescendants()) do
                        if v27308:IsA("Beam") then
                            v27308.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, Color3.fromRGB(v27305, v27305, v27305)), 
                                ColorSequenceKeypoint.new(1, Color3.fromRGB(v27305, v27305, v27305))
                            });
                        end;
                    end;
                    l_l_dtwait_6_0(0.01);
                    if v27306 == 30 then
                        l_l_dtwait_6_0(0.1);
                        task.spawn(function()

                            for v27309 = 1, 30 do
                                v27305 = v27305 - 8;
                                for _, v27311 in pairs(v27304:GetDescendants()) do
                                    if v27311:IsA("Beam") then
                                        v27311.Color = ColorSequence.new({
                                            ColorSequenceKeypoint.new(0, Color3.fromRGB(v27305, v27305, v27305)), 
                                            ColorSequenceKeypoint.new(1, Color3.fromRGB(v27305, v27305, v27305))
                                        });
                                    end;
                                end;
                                l_l_dtwait_6_0(0.01);
                                if v27309 == 30 then
                                    l_v27141_0(v27304, false, "Beam");
                                end;
                            end;
                        end);
                    end;
                end;
            end);
            task.delay(0.3, function()

                local v27312 = l_l_vfx_2_0["particles air"]:Clone();
                v27312.Parent = l_l_Thrown_51_0;
                v27312.CFrame = l_l_l_Hit_11_0_0.Torso.CFrame;
                v27312.CFrame = v27312.CFrame * CFrame.new(0, 1.3, 0) * CFrame.Angles(0.3665191429188092, 3.141592653589793, 0);
                l_v27094_0._maid:give(v27312);
                l_l_PlayAttachment_6_0(v27312);
            end);
            l_l_dtwait_6_0(1.3);
            for _, v27314 in pairs(v27285:GetDescendants()) do
                if v27314:IsA("ImageLabel") then
                    l_l_v10_51_0:Create(v27314, TweenInfo.new(0.6), {
                        ImageTransparency = 1
                    }):Play();
                end;
            end;
            l_l_dtwait_6_0(0.6);
            local l_ColorCorrectionEffect_4 = Instance.new("ColorCorrectionEffect");
            l_ColorCorrectionEffect_4.Parent = game.Lighting;
            l_ColorCorrectionEffect_4.Brightness = -0.6;
            l_v27094_0._maid:give(l_ColorCorrectionEffect_4);
            l_l_dtwait_6_0(0.1);
            l_ColorCorrectionEffect_4:Destroy();
            local v27316 = l_l_vfx_2_0["screen effect last punch"]:Clone();
            v27316.Parent = l_l_Thrown_51_0;
            v27316.CFrame = l_l_l_Hit_11_0_0.Torso.CFrame * CFrame.new(-7, 10, 4.5) * CFrame.Angles(0.3141592653589793, 0, 0.2792526803190927);
            l_v27094_0._maid:give(v27316);
            task.delay(0.3, function()

                l_l_PlayAttachment_6_0(v27316.letters);
                l_l_PlayAttachment_6_0(v27316);
            end);
            l_l_dtwait_6_0(3.63);
            v27316:Destroy();
            local v27317 = l_l_vfx_2_0["big punch beams and mesh"]:Clone();
            v27317.Parent = l_l_Thrown_51_0;
            v27317.CFrame = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(-11, 170, -97);
            v27317.Orientation = Vector3.new(90, -151.87100219726562, 0, 0);
            l_v27094_0._maid:give(v27317);
            l_v27141_0(v27317, true, "Beam");
            local v27318 = l_l_NewDC_0_1.DeathPunch:Clone();
            v27318.CFrame = l_l_l_Hit_11_0_0.Torso.CFrame * CFrame.new(25, 100, 25) * CFrame.Angles(0, 0, 0);
            v27318.CFrame = v27318.CFrame * CFrame.new(10, 40, 12) * CFrame.Angles(-1.3962634015954636, 0.24434609527920614, 0.3665191429188092);
            v27318.Parent = l_l_Thrown_51_0;
            l_v27094_0._maid:give(v27318);
            task.delay(0.1, function()

                l_l_v10_51_0:Create(v27318, TweenInfo.new(0.65, Enum.EasingStyle.Circular), {
                    CFrame = l_l_l_Hit_11_0_0.Torso.CFrame * CFrame.new(29, 47, 25) * CFrame.Angles(-1.1344640137963142, 0.47123889803846897, 0.4014257279586958)
                }):Play();
            end);
            l_l_dtwait_6_0(1.25);
            task.spawn(function()

                local l_ColorCorrectionEffect_5 = Instance.new("ColorCorrectionEffect");
                l_ColorCorrectionEffect_5.Parent = game.Lighting;
                l_ColorCorrectionEffect_5.Brightness = -1;
                l_ColorCorrectionEffect_5.Contrast = -10;
                l_ColorCorrectionEffect_5.Saturation = -1;
                l_l_dtwait_6_0(0.05);
                l_ColorCorrectionEffect_5.Brightness = 1;
                l_ColorCorrectionEffect_5.Contrast = 5;
                l_ColorCorrectionEffect_5.Saturation = -1;
                l_l_dtwait_6_0(0.05);
                l_ColorCorrectionEffect_5:Destroy();
            end);
            l_l_dtwait_6_0(0.05);
            v27317:Destroy();
            v27318:Destroy();
            local v27320 = l_v27182_0({
                cframe = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(-7, 63, -80), 
                transparency = 0, 
                mesh = l_l_meshes_0_0["last punch mesh 2"]
            });
            v27320.Orientation = Vector3.new(0, -135, 0, 0);
            local v27321 = l_v27182_0({
                cframe = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(-18, -1, -84), 
                transparency = 0, 
                mesh = l_l_meshes_0_0["last punch mesh 3"]
            });
            v27321.Orientation = Vector3.new(0, -45, 0, 0);
            local v27322 = l_v27182_0({
                cframe = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(0, 68, -79), 
                transparency = 0, 
                scale = Vector3.new(5, 3, 3, 0), 
                mesh = l_l_meshes_0_0["last punch mesh"]
            });
            v27322.Orientation = Vector3.new(-0.7059999704360962, -45.994998931884766, 89.29399871826172, 0);
            local v27323 = l_v27182_0({
                cframe = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(0, 68, -79), 
                transparency = 0, 
                scale = Vector3.new(0, 95, 0, 0), 
                mesh = l_l_meshes_0_0["last punch mesh 1"]
            });
            v27322.Orientation = Vector3.new(0, 0, 0, 0);
            local v27324 = l_l_vfx_2_0["last punch fx"]:Clone();
            v27324.Parent = l_l_Thrown_51_0;
            v27324.CFrame = l_l_l_Char_21_0_1.PrimaryPart.CFrame * CFrame.new(1, -1, -78);
            l_v27094_0._maid:give(v27324);
            l_v27141_0(v27324, true, "Beam");
            local v27325 = TweenInfo.new(1.11, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out);
            local v27326 = {
                transparency2 = 1, 
                scale = Vector3.new(150, 300, 150, 0), 
                cframe = v27323.CFrame * CFrame.new(0, -30, 0) * CFrame.Angles(0, 3.141592653589793, 0)
            };
            local l_v27325_0 = v27325
            local l_v27326_0 = v27326
            task.spawn(function()

                if not v27323:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27323, l_v27325_0, {
                        CFrame = l_v27326_0.cframe, 
                        Size = l_v27326_0.size, 
                        Transparency = l_v27326_0.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27323, l_v27325_0, {
                        CFrame = l_v27326_0.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27323:FindFirstChildWhichIsA("SpecialMesh"), l_v27325_0, {
                        Scale = l_v27326_0.scale
                    }):Play();
                end;
                for _, v27330 in pairs(v27323:GetChildren()) do
                    if v27330:IsA("Decal") then
                        l_l_v10_51_0:Create(v27330, l_v27325_0, {
                            Transparency = l_v27326_0.transparency2
                        }):Play();
                    end;
                end;
            end);
            v27325 = TweenInfo.new(0.11, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out);
            v27326 = {
                transparency2 = 1, 
                scale = Vector3.new(1.5, 0, 0, 0), 
                cframe = v27322.CFrame * CFrame.new(-70, 0, 0)
            };
            local l_v27325_1 = v27325
            local l_v27326_1 = v27326
            task.spawn(function()

                if not v27322:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27322, l_v27325_1, {
                        CFrame = l_v27326_1.cframe, 
                        Size = l_v27326_1.size, 
                        Transparency = l_v27326_1.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27322, l_v27325_1, {
                        CFrame = l_v27326_1.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27322:FindFirstChildWhichIsA("SpecialMesh"), l_v27325_1, {
                        Scale = l_v27326_1.scale
                    }):Play();
                end;
                for _, v27334 in pairs(v27322:GetChildren()) do
                    if v27334:IsA("Decal") then
                        l_l_v10_51_0:Create(v27334, l_v27325_1, {
                            Transparency = l_v27326_1.transparency2
                        }):Play();
                    end;
                end;
            end);
            v27325 = TweenInfo.new(0.11, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out);
            v27326 = {
                transparency1 = 1, 
                size = Vector3.new(0.0010000000474974513, 100, 0.0010000000474974513, 0), 
                cframe = v27320.CFrame * CFrame.new(-4, -49, -6)
            };
            local l_v27325_2 = v27325
            local l_v27326_2 = v27326
            task.spawn(function()

                if not v27320:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27320, l_v27325_2, {
                        CFrame = l_v27326_2.cframe, 
                        Size = l_v27326_2.size, 
                        Transparency = l_v27326_2.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27320, l_v27325_2, {
                        CFrame = l_v27326_2.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27320:FindFirstChildWhichIsA("SpecialMesh"), l_v27325_2, {
                        Scale = l_v27326_2.scale
                    }):Play();
                end;
                for _, v27338 in pairs(v27320:GetChildren()) do
                    if v27338:IsA("Decal") then
                        l_l_v10_51_0:Create(v27338, l_v27325_2, {
                            Transparency = l_v27326_2.transparency2
                        }):Play();
                    end;
                end;
            end);
            v27325 = TweenInfo.new(0.11, Enum.EasingStyle.Linear);
            v27326 = {
                transparency1 = 1, 
                size = Vector3.new(0.0010000000474974513, 250, 0.0010000000474974513, 0), 
                cframe = v27321.CFrame * CFrame.new(24, 80, -8)
            };
            task.spawn(function()

                if not v27321:FindFirstChildWhichIsA("SpecialMesh") then
                    l_l_v10_51_0:Create(v27321, v27325, {
                        CFrame = v27326.cframe, 
                        Size = v27326.size, 
                        Transparency = v27326.transparency1
                    }):Play();
                else
                    l_l_v10_51_0:Create(v27321, v27325, {
                        CFrame = v27326.cframe
                    }):Play();
                    l_l_v10_51_0:Create(v27321:FindFirstChildWhichIsA("SpecialMesh"), v27325, {
                        Scale = v27326.scale
                    }):Play();
                end;
                for _, v27340 in pairs(v27321:GetChildren()) do
                    if v27340:IsA("Decal") then
                        l_l_v10_51_0:Create(v27340, v27325, {
                            Transparency = v27326.transparency2
                        }):Play();
                    end;
                end;
            end);
        end);

