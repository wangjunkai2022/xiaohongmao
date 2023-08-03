package com.qennnsad.aknkaksd.analytics.data.events;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.g;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: Ids.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0005\u0007\b\t\n\u000bB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0004\f\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;", "", "_id", "", "(Ljava/lang/String;)V", "get_id", "()Ljava/lang/String;", "Action", "BottomMenu", "GiftPanel", "Profile", "StreamingRoom", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$BottomMenu;", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$GiftPanel;", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class Screen {
    @g
    private final String _id;

    /* compiled from: Ids.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;", "", MessageBundle.TITLE_ENTRY, "", "getTitle", "()Ljava/lang/String;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface Action {
        @g
        String getTitle();
    }

    /* compiled from: Ids.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$BottomMenu;", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;", "()V", "id", "", "Action", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class BottomMenu extends Screen {
        @g
        public static final BottomMenu INSTANCE;
        @JvmField
        @g
        public static final String id;

        /* compiled from: Ids.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$BottomMenu$Action;", "", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;", MessageBundle.TITLE_ENTRY, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "Topup", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public enum Action implements Action {
            Topup("k_top_up_bottom_menu");
            
            @g
            private final String title;

            Action(String str) {
                this.title = str;
            }

            @Override // com.qennnsad.aknkaksd.analytics.data.events.Screen.Action
            @g
            public String getTitle() {
                return this.title;
            }
        }

        static {
            BottomMenu bottomMenu = new BottomMenu();
            INSTANCE = bottomMenu;
            id = super.get_id();
        }

        private BottomMenu() {
            super("bottom_menu", null);
        }
    }

    /* compiled from: Ids.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$GiftPanel;", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;", "()V", "id", "", "Action", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class GiftPanel extends Screen {
        @g
        public static final GiftPanel INSTANCE;
        @JvmField
        @g
        public static final String id;

        /* compiled from: Ids.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$GiftPanel$Action;", "", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;", MessageBundle.TITLE_ENTRY, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "Topup", "VipPanel", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public enum Action implements Action {
            Topup("k_top_up_streaming_screen"),
            VipPanel("k_open_VIP_gifts_panel");
            
            @g
            private final String title;

            Action(String str) {
                this.title = str;
            }

            @Override // com.qennnsad.aknkaksd.analytics.data.events.Screen.Action
            @g
            public String getTitle() {
                return this.title;
            }
        }

        static {
            GiftPanel giftPanel = new GiftPanel();
            INSTANCE = giftPanel;
            id = super.get_id();
        }

        private GiftPanel() {
            super("streaming_room_gift_panel", null);
        }
    }

    /* compiled from: Ids.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile;", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;", "()V", "id", "", "Action", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Profile extends Screen {
        @g
        public static final Profile INSTANCE;
        @JvmField
        @g
        public static final String id;

        /* compiled from: Ids.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;", "", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;", MessageBundle.TITLE_ENTRY, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "PersonalSettings", "AvatarChange", "OpenVip", "Topup", "DailyCoins", "ChangePhone", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public enum Action implements Action {
            PersonalSettings("k_personal_settings"),
            AvatarChange("k_avatar_change"),
            OpenVip("k_open_VIP_profile_screen"),
            Topup("k_top_up_profile_screen"),
            DailyCoins("k_dailycoins"),
            ChangePhone("k_change_phone");
            
            @g
            private final String title;

            Action(String str) {
                this.title = str;
            }

            @Override // com.qennnsad.aknkaksd.analytics.data.events.Screen.Action
            @g
            public String getTitle() {
                return this.title;
            }
        }

        static {
            Profile profile = new Profile();
            INSTANCE = profile;
            id = super.get_id();
        }

        private Profile() {
            super("profile_page", null);
        }
    }

    /* compiled from: Ids.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom;", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen;", "()V", "id", "", "Action", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class StreamingRoom extends Screen {
        @g
        public static final StreamingRoom INSTANCE;
        @JvmField
        @g
        public static final String id;

        /* compiled from: Ids.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$StreamingRoom$Action;", "", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Action;", MessageBundle.TITLE_ENTRY, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "OpenVipSeats", "OpenDJ", "OpenCasino", "OpenGifts", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public enum Action implements Action {
            OpenVipSeats("k_open_VIP_seats"),
            OpenDJ("k_open_DJ"),
            OpenCasino("k_open_casino_streaming_screen"),
            OpenGifts("k_open_gifts");
            
            @g
            private final String title;

            Action(String str) {
                this.title = str;
            }

            @Override // com.qennnsad.aknkaksd.analytics.data.events.Screen.Action
            @g
            public String getTitle() {
                return this.title;
            }
        }

        static {
            StreamingRoom streamingRoom = new StreamingRoom();
            INSTANCE = streamingRoom;
            id = super.get_id();
        }

        private StreamingRoom() {
            super("streaming_room", null);
        }
    }

    private Screen(String str) {
        this._id = str;
    }

    public /* synthetic */ Screen(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @g
    protected final String get_id() {
        return this._id;
    }
}
