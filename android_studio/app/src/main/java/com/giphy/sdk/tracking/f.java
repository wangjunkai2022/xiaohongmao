package com.giphy.sdk.tracking;

import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.analytics.models.enums.EventType;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.enums.MediaType;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: MediaExtension.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\"\u0014\u0010\u0003\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0014\u0010\u0005\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0002\"\u0014\u0010\u0007\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0002\"\u0014\u0010\t\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0002\"\u0014\u0010\u000b\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0002\"\u0014\u0010\r\u001a\u00020\u00008\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0002\",\u0010\u0013\u001a\u0004\u0018\u00010\u0000*\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00008F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0010\"\u0004\b\u0011\u0010\u0012\",\u0010\u0018\u001a\u0004\u0018\u00010\u0014*\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00148F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0015\"\u0004\b\u0016\u0010\u0017\",\u0010\u001d\u001a\u0004\u0018\u00010\u0019*\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\u001a\"\u0004\b\u001b\u0010\u001c\"\u0015\u0010\u001f\u001a\u00020\u0019*\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\f\u0010\u001e\",\u0010!\u001a\u0004\u0018\u00010\u0019*\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u001a\"\u0004\b \u0010\u001c\",\u0010&\u001a\u0004\u0018\u00010\"*\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\"8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0001\u0010#\"\u0004\b$\u0010%¨\u0006'"}, d2 = {"", "a", "Ljava/lang/String;", "EVENT_TYPE_KEY", "b", "RESPONSE_ID_KEY", "c", "POSITION_KEY", "d", "IS_EMOJI_KEY", "e", "IS_TEXT_KEY", "f", "KEY_VIDEO_LENGTH", "Lcom/giphy/sdk/core/models/Media;", "value", "(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/String;", "j", "(Lcom/giphy/sdk/core/models/Media;Ljava/lang/String;)V", "responseId", "", "(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/Integer;", ContextChain.TAG_INFRA, "(Lcom/giphy/sdk/core/models/Media;Ljava/lang/Integer;)V", "position", "", "(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/Boolean;", "g", "(Lcom/giphy/sdk/core/models/Media;Ljava/lang/Boolean;)V", "isEmoji", "(Lcom/giphy/sdk/core/models/Media;)Z", "isVideo", "k", "isText", "Lcom/giphy/sdk/analytics/models/enums/EventType;", "(Lcom/giphy/sdk/core/models/Media;)Lcom/giphy/sdk/analytics/models/enums/EventType;", "h", "(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/analytics/models/enums/EventType;)V", "eventType", "giphy-ui-2.1.9_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f17009a = "etk";

    /* renamed from: b  reason: collision with root package name */
    private static final String f17010b = "rk";

    /* renamed from: c  reason: collision with root package name */
    private static final String f17011c = "pk";

    /* renamed from: d  reason: collision with root package name */
    private static final String f17012d = "iek";

    /* renamed from: e  reason: collision with root package name */
    private static final String f17013e = "itk";
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    public static final String f17014f = "video_length";

    @h
    public static final EventType a(@m8.g Media eventType) {
        String str;
        Intrinsics.checkNotNullParameter(eventType, "$this$eventType");
        HashMap<String, String> userDictionary = eventType.getUserDictionary();
        if (userDictionary == null || (str = userDictionary.get(f17009a)) == null) {
            return null;
        }
        return EventType.values()[Integer.parseInt(str)];
    }

    @h
    public static final Integer b(@m8.g Media position) {
        String str;
        Intrinsics.checkNotNullParameter(position, "$this$position");
        HashMap<String, String> userDictionary = position.getUserDictionary();
        if (userDictionary == null || (str = userDictionary.get(f17011c)) == null) {
            return null;
        }
        return Integer.valueOf(Integer.parseInt(str));
    }

    @h
    public static final String c(@m8.g Media responseId) {
        Intrinsics.checkNotNullParameter(responseId, "$this$responseId");
        HashMap<String, String> userDictionary = responseId.getUserDictionary();
        if (userDictionary != null) {
            return userDictionary.get(f17010b);
        }
        return null;
    }

    @h
    public static final Boolean d(@m8.g Media isEmoji) {
        String str;
        Intrinsics.checkNotNullParameter(isEmoji, "$this$isEmoji");
        HashMap<String, String> userDictionary = isEmoji.getUserDictionary();
        if (userDictionary == null || (str = userDictionary.get(f17012d)) == null) {
            return null;
        }
        return Boolean.valueOf(Boolean.parseBoolean(str));
    }

    @h
    public static final Boolean e(@m8.g Media isText) {
        String str;
        Intrinsics.checkNotNullParameter(isText, "$this$isText");
        HashMap<String, String> userDictionary = isText.getUserDictionary();
        if (userDictionary == null || (str = userDictionary.get(f17013e)) == null) {
            return null;
        }
        return Boolean.valueOf(Boolean.parseBoolean(str));
    }

    public static final boolean f(@m8.g Media isVideo) {
        Intrinsics.checkNotNullParameter(isVideo, "$this$isVideo");
        return isVideo.getType() == MediaType.video;
    }

    public static final void g(@m8.g Media isEmoji, @h Boolean bool) {
        Intrinsics.checkNotNullParameter(isEmoji, "$this$isEmoji");
        HashMap<String, String> userDictionary = isEmoji.getUserDictionary();
        if (userDictionary == null) {
            userDictionary = new HashMap<>();
        }
        isEmoji.setUserDictionary(userDictionary);
        if (bool != null) {
            boolean booleanValue = bool.booleanValue();
            HashMap<String, String> userDictionary2 = isEmoji.getUserDictionary();
            if (userDictionary2 != null) {
                userDictionary2.put(f17012d, String.valueOf(booleanValue));
            }
        }
    }

    public static final void h(@m8.g Media eventType, @h EventType eventType2) {
        HashMap<String, String> userDictionary;
        Intrinsics.checkNotNullParameter(eventType, "$this$eventType");
        HashMap<String, String> userDictionary2 = eventType.getUserDictionary();
        if (userDictionary2 == null) {
            userDictionary2 = new HashMap<>();
        }
        eventType.setUserDictionary(userDictionary2);
        if (eventType2 == null || (userDictionary = eventType.getUserDictionary()) == null) {
            return;
        }
        userDictionary.put(f17009a, String.valueOf(eventType2.ordinal()));
    }

    public static final void i(@m8.g Media position, @h Integer num) {
        Intrinsics.checkNotNullParameter(position, "$this$position");
        HashMap<String, String> userDictionary = position.getUserDictionary();
        if (userDictionary == null) {
            userDictionary = new HashMap<>();
        }
        position.setUserDictionary(userDictionary);
        if (num != null) {
            int intValue = num.intValue();
            HashMap<String, String> userDictionary2 = position.getUserDictionary();
            if (userDictionary2 != null) {
                userDictionary2.put(f17011c, String.valueOf(intValue));
            }
        }
    }

    public static final void j(@m8.g Media responseId, @h String str) {
        HashMap<String, String> userDictionary;
        Intrinsics.checkNotNullParameter(responseId, "$this$responseId");
        HashMap<String, String> userDictionary2 = responseId.getUserDictionary();
        if (userDictionary2 == null) {
            userDictionary2 = new HashMap<>();
        }
        responseId.setUserDictionary(userDictionary2);
        if (str == null || (userDictionary = responseId.getUserDictionary()) == null) {
            return;
        }
        userDictionary.put(f17010b, str);
    }

    public static final void k(@m8.g Media isText, @h Boolean bool) {
        Intrinsics.checkNotNullParameter(isText, "$this$isText");
        HashMap<String, String> userDictionary = isText.getUserDictionary();
        if (userDictionary == null) {
            userDictionary = new HashMap<>();
        }
        isText.setUserDictionary(userDictionary);
        if (bool != null) {
            boolean booleanValue = bool.booleanValue();
            HashMap<String, String> userDictionary2 = isText.getUserDictionary();
            if (userDictionary2 != null) {
                userDictionary2.put(f17013e, String.valueOf(booleanValue));
            }
        }
    }
}
