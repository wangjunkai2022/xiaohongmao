package com.qennnsad.aknkaksd.data.bean.games;

import com.qennnsad.aknkaksd.data.bean.webgame.GameListBean;
import java.util.List;

/* loaded from: classes3.dex */
public class GameListAndGameConfig {
    GameConfigBean configBean;
    List<GameListBean> gameListBeans;

    public GameConfigBean getConfigBean() {
        return this.configBean;
    }

    public List<GameListBean> getGameListBeans() {
        return this.gameListBeans;
    }

    public void setConfigBean(GameConfigBean gameConfigBean) {
        this.configBean = gameConfigBean;
    }

    public void setGameListBeans(List<GameListBean> list) {
        this.gameListBeans = list;
    }

    public String toString() {
        return "GameListAndGameConfig{configBean=" + this.configBean + ", gameListBeans=" + this.gameListBeans + '}';
    }
}
