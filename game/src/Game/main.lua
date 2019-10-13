
local folderOfThisFile = (...):match("(.-)[^%/%.]+$")

-- ゲームクラス
local Game = require(folderOfThisFile .. 'class')

-- クラス
local Application = require 'Application'
local AudioManager = require 'AudioManager'

-- 初期化
function Game:initialize(...)
    Application.initialize(self, ...)
end

-- 読み込み
function Game:load(...)
    -- オーディオマネージャ
    self.audio = AudioManager()

    -- 音楽
    self.audio:loadMusics(
        {
        },
        {
            basepath = 'assets',
            volume = 0.5,
        }
    )

    -- ＳＥ
    self.audio:loadSounds(
        {
        },
        {
            basepath = 'assets',
        }
    )
end

-- 更新
function Game:update(dt, ...)
end

-- 描画
function Game:draw(...)
end

-- キー入力
function Game:keypressed(key, scancode, isrepeat)
end

-- キー離した
function Game:keyreleased(key, scancode)
end

-- テキスト入力
function Game:textinput(text)
end

-- マウス入力
function Game:mousepressed(x, y, button, istouch, presses)
end

-- マウス離した
function Game:mousereleased(x, y, button, istouch, presses)
end

-- マウス移動
function Game:mousemoved(x, y, dx, dy, istouch)
end

-- マウスホイール
function Game:wheelmoved(x, y)
end

-- リサイズ
function Game:resize(width, height)
end
