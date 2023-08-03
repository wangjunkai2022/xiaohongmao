package o5;

import com.qennnsad.aknkaksd.data.bean.websocket.PeerageLogin;
import kotlin.Metadata;
import m8.g;

/* compiled from: PeerageLoginMocks.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u000e\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000¨\u0006\u0004"}, d2 = {"", "roomId", "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;", "a", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @g
    public static final PeerageLogin a(int i4) {
        PeerageLogin peerageLogin = new PeerageLogin();
        peerageLogin.setType(com.qennnsad.aknkaksd.data.websocket.b.X);
        peerageLogin.setRoom_id(String.valueOf(i4));
        peerageLogin.setUser_id("60827970");
        peerageLogin.setNick_name("库萨玛");
        peerageLogin.setAvatar("/style/avatar/992/60827970_small.jpg?t=1607952591");
        peerageLogin.setLevel_id(39);
        peerageLogin.setPeerage_id(4);
        peerageLogin.setPeerage_name("领主");
        peerageLogin.setMount_name("功夫熊猫");
        peerageLogin.setMount_url("/style/app/images/mount/phoenix.svga");
        peerageLogin.setIs_vibrate(false);
        return peerageLogin;
    }
}
