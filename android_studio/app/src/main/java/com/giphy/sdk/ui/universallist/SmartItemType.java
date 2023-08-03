package com.giphy.sdk.ui.universallist;

import android.view.ViewGroup;
import com.giphy.sdk.ui.universallist.a;
import com.giphy.sdk.ui.universallist.e;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum DynamicText uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: SmartItemType.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001BI\b\u0002\u0012>\u0010\u0010\u001a:\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0017\u0012\u00150\u0007R\u00020\b¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0002j\u0002`\u000b¢\u0006\u0004\b\u0011\u0010\u0012RO\u0010\u0010\u001a:\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0017\u0012\u00150\u0007R\u00020\b¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0002j\u0002`\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fj\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/giphy/sdk/ui/universallist/SmartItemType;", "", "Lkotlin/Function2;", "Landroid/view/ViewGroup;", "Lkotlin/ParameterName;", "name", "parent", "Lcom/giphy/sdk/ui/universallist/e$a;", "Lcom/giphy/sdk/ui/universallist/e;", "adapterHelper", "Lcom/giphy/sdk/ui/universallist/j;", "Lcom/giphy/sdk/ui/universallist/OnCreateViewHolder;", "a", "Lkotlin/jvm/functions/Function2;", "getCreateViewHolder", "()Lkotlin/jvm/functions/Function2;", "createViewHolder", "<init>", "(Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V", "Video", "Gif", "DynamicText", "DynamicTextWithMoreByYou", "UserProfile", "NetworkState", "NoResults", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class SmartItemType {
    public static final SmartItemType DynamicText;
    public static final SmartItemType DynamicTextWithMoreByYou;
    public static final SmartItemType Gif;
    public static final SmartItemType NetworkState;
    public static final SmartItemType NoResults;
    public static final SmartItemType UserProfile;
    public static final SmartItemType Video;

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ SmartItemType[] f18850b;
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Function2<ViewGroup, e.a, j> f18851a;

    static {
        SmartItemType smartItemType = new SmartItemType("Video", 0, i.f18903d.a());
        Video = smartItemType;
        SmartItemType smartItemType2 = new SmartItemType("Gif", 1, c.f18861d.a());
        Gif = smartItemType2;
        a.C0140a c0140a = a.f18852c;
        SmartItemType smartItemType3 = new SmartItemType("DynamicText", 2, c0140a.a(false));
        DynamicText = smartItemType3;
        SmartItemType smartItemType4 = new SmartItemType("DynamicTextWithMoreByYou", 3, c0140a.a(true));
        DynamicTextWithMoreByYou = smartItemType4;
        SmartItemType smartItemType5 = new SmartItemType("UserProfile", 4, k.f18908b.a());
        UserProfile = smartItemType5;
        SmartItemType smartItemType6 = new SmartItemType("NetworkState", 5, com.giphy.sdk.ui.pagination.d.f18809c.a());
        NetworkState = smartItemType6;
        SmartItemType smartItemType7 = new SmartItemType("NoResults", 6, b.f18858b.a());
        NoResults = smartItemType7;
        f18850b = new SmartItemType[]{smartItemType, smartItemType2, smartItemType3, smartItemType4, smartItemType5, smartItemType6, smartItemType7};
    }

    private SmartItemType(String str, int i4, Function2 function2) {
        this.f18851a = function2;
    }

    public static SmartItemType valueOf(String str) {
        return (SmartItemType) Enum.valueOf(SmartItemType.class, str);
    }

    public static SmartItemType[] values() {
        return (SmartItemType[]) f18850b.clone();
    }

    @m8.g
    public final Function2<ViewGroup, e.a, j> getCreateViewHolder() {
        return this.f18851a;
    }
}
