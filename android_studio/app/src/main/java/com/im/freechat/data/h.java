package com.im.freechat.data;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ApiExtends.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0001\u0018\u0000 \u00042\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/im/freechat/data/h;", "", "<init>", "(Ljava/lang/String;I)V", "a", "Code", "Msg", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
enum h {
    Code,
    Msg;
    
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final a f39804a = new a(null);

    /* compiled from: ApiExtends.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0002¨\u0006\u0007"}, d2 = {"Lcom/im/freechat/data/h$a;", "", "Lcom/im/freechat/data/h;", "", "a", "<init>", "()V", "data_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @m8.g
        public final String a(@m8.g h hVar) {
            Intrinsics.checkNotNullParameter(hVar, "<this>");
            String lowerCase = hVar.name().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            return lowerCase;
        }
    }
}
