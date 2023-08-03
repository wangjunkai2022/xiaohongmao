package com.im.freechat.extend;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.format.DateUtils;
import android.util.Size;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.google.android.exoplayer2.upstream.w;
import com.im.freechat.sdk.SDKManager;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.shared.entities.message.Message;
import io.sentry.protocol.y;
import java.io.File;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

/* compiled from: Extends.kt */
@Metadata(bv = {}, d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010\u0006\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0005\u001a\u001c\u0010\n\u001a\u00020\u0003*\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u0005\u001a2\u0010\u0014\u001a\u00020\u0003*\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0003\u0010\u0013\u001a\u00020\u0012\u001a\u0014\u0010\u0015\u001a\u00020\u0003*\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\f\u001a\u000e\u0010\u0016\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f\u001a?\u0010\u001b\u001a\u00020\u0003\"\b\b\u0000\u0010\u0017*\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\f2\u0006\u0010\u001a\u001a\u00028\u00002\b\b\u0003\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u001b\u0010\u001c\u001a3\u0010\u001d\u001a\u00020\u0003\"\b\b\u0000\u0010\u0017*\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\f2\u0006\u0010\u001a\u001a\u00028\u00002\b\b\u0003\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u000e\u0010!\u001a\u00020 2\u0006\u0010\u0018\u001a\u00020\u001f\u001a\u000e\u0010\"\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u001f\u001a\n\u0010$\u001a\u00020#*\u00020\u001f\u001a\u000e\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0012\u001a\u000e\u0010)\u001a\u00020\u00052\u0006\u0010(\u001a\u00020'\u001a\u001f\u0010,\u001a\u00020\u00102\u0006\u0010*\u001a\u00020'2\b\u0010+\u001a\u0004\u0018\u00010'¢\u0006\u0004\b,\u0010-\u001a$\u00102\u001a\u00020\u00052\u0014\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020/\u0018\u00010.2\u0006\u00101\u001a\u00020\u0005\u001a\u0013\u00104\u001a\u0004\u0018\u00010\u0012*\u000203¢\u0006\u0004\b4\u00105\u001a\u0012\u00108\u001a\u00020\u0005*\u0002062\u0006\u00107\u001a\u00020\u0007\u001a4\u0010;\u001a\u0004\u0018\u00010\u0010\"\u0004\b\u0000\u0010\u0017*\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001092\u000e\u0010:\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u000109H\u0086\u0004¢\u0006\u0004\b;\u0010<\u001a(\u0010?\u001a\u00020\u0003\"\n\b\u0000\u0010\u0017\u0018\u0001*\u00020=*\u00028\u00002\u0006\u0010>\u001a\u00028\u0000H\u0086\b¢\u0006\u0004\b?\u0010@\u001a\n\u0010A\u001a\u00020\u0005*\u00020\u0012\u001a\n\u0010B\u001a\u00020\u0010*\u00020\u0005\"\u0017\u0010G\u001a\u00020C8\u0006¢\u0006\f\n\u0004\b$\u0010D\u001a\u0004\bE\u0010F¨\u0006H"}, d2 = {"Landroid/app/Activity;", "Lcom/im/freechat/shared/entities/message/Message;", "value", "", "b", "", "c", "Landroid/content/Context;", "text", AnnotatedPrivateKey.LABEL, "d", "Landroid/widget/ImageView;", "", "url", "", "thumbnail", "", "toCrop", "", "placeholder", "r", "o", "z", ExifInterface.GPS_DIRECTION_TRUE, "file", "thumbnailUrl", "imageView", "t", "(Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/ImageView;I)V", "p", "(Ljava/lang/Object;Landroid/widget/ImageView;I)V", "Ljava/io/File;", "Landroid/util/Size;", "k", "w", "Landroid/graphics/Bitmap$CompressFormat;", "a", "second", "h", "", "data", "g", "timestamp1", "timestamp2", "f", "(JLjava/lang/Long;)Z", "", "Lcom/im/freechat/shared/entities/ChatMemberInfo;", "userMasksMap", "sender", ContextChain.TAG_INFRA, "Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;", "m", "(Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;)Ljava/lang/Integer;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "ctx", "l", "", "collection", y.b.f83919g, "(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Boolean;", "Ljava/io/Serializable;", TypedValues.Transition.S_TO, "v", "(Ljava/io/Serializable;Ljava/io/Serializable;)V", y.b.f83920h, "n", "Ljava/text/SimpleDateFormat;", "Ljava/text/SimpleDateFormat;", "j", "()Ljava/text/SimpleDateFormat;", "durationFormatter", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class m {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final SimpleDateFormat f41948a = new SimpleDateFormat("mm:ss");

    /* compiled from: Extends.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChatMember.ManagementRole.values().length];
            iArr[ChatMember.ManagementRole.CUSTOMER_SERVICE.ordinal()] = 1;
            iArr[ChatMember.ManagementRole.MANAGEMENT.ordinal()] = 2;
            iArr[ChatMember.ManagementRole.FAMILY.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @m8.g
    public static final Bitmap.CompressFormat a(@m8.g File file) {
        String extension;
        Intrinsics.checkNotNullParameter(file, "<this>");
        extension = FilesKt__UtilsKt.getExtension(file);
        String lowerCase = extension.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return Intrinsics.areEqual(lowerCase, "png") ? Bitmap.CompressFormat.PNG : Intrinsics.areEqual(lowerCase, "webp") ? Bitmap.CompressFormat.WEBP_LOSSLESS : Bitmap.CompressFormat.JPEG;
    }

    public static final void b(@m8.g Activity activity, @m8.g Message value) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.getContent() != null) {
            String content = value.getContent();
            Intrinsics.checkNotNull(content);
            e(activity, content, null, 2, null);
            f.z(activity, b.s.f2260g0);
        }
    }

    public static final void c(@m8.g Activity activity, @m8.g String value) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        e(activity, value, null, 2, null);
        f.z(activity, b.s.f2260g0);
    }

    public static final void d(@m8.g Context context, @m8.g String text, @m8.g String label) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(label, "label");
        ClipData newPlainText = ClipData.newPlainText(label, text);
        Object systemService = context.getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(newPlainText);
    }

    public static /* synthetic */ void e(Context context, String str, String str2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            str2 = "text";
        }
        d(context, str, str2);
    }

    public static final boolean f(long j4, @m8.h Long l10) {
        if (l10 == null) {
            return false;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(j4);
        gregorianCalendar2.setTimeInMillis(l10.longValue());
        return (gregorianCalendar.get(6) == gregorianCalendar2.get(6) && gregorianCalendar.get(1) == gregorianCalendar2.get(1)) ? false : true;
    }

    @m8.g
    public static final String g(long j4) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(j4);
        gregorianCalendar2.setTimeInMillis(System.currentTimeMillis());
        if (gregorianCalendar.get(1) == gregorianCalendar2.get(1)) {
            String format = new SimpleDateFormat("MMMM dd", Locale.getDefault()).format(gregorianCalendar.getTime());
            Intrinsics.checkNotNullExpressionValue(format, "{\n        SimpleDateForm…rmat(calendar.time)\n    }");
            return format;
        }
        String format2 = new SimpleDateFormat("MMMM dd yyyy", Locale.getDefault()).format(gregorianCalendar.getTime());
        Intrinsics.checkNotNullExpressionValue(format2, "SimpleDateFormat(\"MMMM d…()).format(calendar.time)");
        return format2;
    }

    @m8.g
    public static final String h(int i4) {
        int i10 = i4 % 60;
        int i11 = i4 / 60;
        if (i10 < 10) {
            return '0' + i11 + ":0" + i10;
        }
        StringBuilder sb = new StringBuilder();
        sb.append('0');
        sb.append(i11);
        sb.append(':');
        sb.append(i10);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001b  */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.String i(@m8.h java.util.Map<java.lang.Integer, com.im.freechat.shared.entities.ChatMemberInfo> r1, @m8.g java.lang.String r2) {
        /*
            java.lang.String r0 = "sender"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            if (r1 == 0) goto L18
            java.lang.Integer r0 = kotlin.text.StringsKt.toIntOrNull(r2)
            java.lang.Object r1 = r1.get(r0)
            com.im.freechat.shared.entities.ChatMemberInfo r1 = (com.im.freechat.shared.entities.ChatMemberInfo) r1
            if (r1 == 0) goto L18
            java.lang.String r1 = r1.getName()
            goto L19
        L18:
            r1 = 0
        L19:
            if (r1 == 0) goto L24
            boolean r0 = kotlin.text.StringsKt.isBlank(r1)
            if (r0 == 0) goto L22
            goto L24
        L22:
            r0 = 0
            goto L25
        L24:
            r0 = 1
        L25:
            if (r0 == 0) goto L28
            goto L29
        L28:
            r2 = r1
        L29:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.extend.m.i(java.util.Map, java.lang.String):java.lang.String");
    }

    @m8.g
    public static final SimpleDateFormat j() {
        return f41948a;
    }

    @m8.g
    public static final Size k(@m8.g File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        int w9 = w(file);
        return (w9 == 90 || w9 == 270) ? new Size(options.outHeight, options.outWidth) : new Size(options.outWidth, options.outHeight);
    }

    @m8.g
    public static final String l(@m8.g UserModel userModel, @m8.g Context ctx) {
        Intrinsics.checkNotNullParameter(userModel, "<this>");
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        long lastOnline = userModel.getLastOnline();
        if (lastOnline == 0) {
            String string = ctx.getString(b.s.f2257f8);
            Intrinsics.checkNotNullExpressionValue(string, "ctx.getString(R.string.never_seen_online)");
            return string;
        } else if (lastOnline == 1) {
            String string2 = ctx.getString(b.s.f2350o8);
            Intrinsics.checkNotNullExpressionValue(string2, "ctx.getString(R.string.online_status_hidden)");
            return string2;
        } else if (lastOnline == Long.MAX_VALUE) {
            String string3 = ctx.getString(b.s.f2330m8);
            Intrinsics.checkNotNullExpressionValue(string3, "ctx.getString(R.string.online)");
            return string3;
        } else {
            String string4 = ctx.getString(b.s.E6, DateUtils.getRelativeDateTimeString(ctx, TimeUnit.SECONDS.toMillis(userModel.getLastOnline()), w.f27407d, 604800000L, 0).toString());
            Intrinsics.checkNotNullExpressionValue(string4, "ctx.getString(\n         …   ).toString()\n        )");
            return string4;
        }
    }

    @m8.h
    public static final Integer m(@m8.g ChatMember.ManagementRole managementRole) {
        Intrinsics.checkNotNullParameter(managementRole, "<this>");
        int i4 = a.$EnumSwitchMapping$0[managementRole.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    return null;
                }
                return Integer.valueOf(b.h.f1661t5);
            }
            return Integer.valueOf(b.h.P5);
        }
        return Integer.valueOf(b.h.f1642r6);
    }

    public static final boolean n(@m8.g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return Pattern.matches("^[_a-z0-9-]+(\\.[_a-z0-9-]+)*@[a-z0-9-]+(\\.[a-z0-9-]+)*(\\.[a-z]{2,})$", str);
    }

    public static final void o(@m8.g ImageView imageView, @m8.h Object obj) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        if (obj != null) {
            com.bumptech.glide.c.E(imageView.getContext()).m(z(obj)).J0(new com.bumptech.glide.load.resource.bitmap.n()).k1(imageView);
        }
    }

    public static final <T extends ImageView> void p(@m8.h Object obj, @m8.g T imageView, @DrawableRes int i4) {
        boolean contains$default;
        com.bumptech.glide.j<Drawable> m9;
        String str;
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        if (obj != null) {
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) obj.toString(), (CharSequence) ".gif", false, 2, (Object) null);
            com.bumptech.glide.k E = com.bumptech.glide.c.E(imageView.getContext());
            if (contains$default) {
                m9 = E.y().m(z(obj));
                str = "asGif().load(updateUrl(file))";
            } else {
                m9 = E.m(z(obj));
                str = "load(updateUrl(file))";
            }
            Intrinsics.checkNotNullExpressionValue(m9, str);
            m9.w0(i4).k1(imageView);
        }
    }

    public static /* synthetic */ void q(Object obj, ImageView imageView, int i4, int i10, Object obj2) {
        if ((i10 & 4) != 0) {
            i4 = 0;
        }
        p(obj, imageView, i4);
    }

    public static final void r(@m8.g ImageView imageView, @m8.h Object obj, float f10, boolean z9, @DrawableRes int i4) {
        Intrinsics.checkNotNullParameter(imageView, "<this>");
        if (obj != null) {
            com.bumptech.glide.j<Drawable> C1 = com.bumptech.glide.c.E(imageView.getContext()).m(z(obj)).C1(f10);
            if (z9) {
                C1.J0(new com.bumptech.glide.load.resource.bitmap.l());
            }
            C1.w0(i4);
            C1.k1(imageView);
        }
    }

    public static /* synthetic */ void s(ImageView imageView, Object obj, float f10, boolean z9, int i4, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            f10 = 0.2f;
        }
        if ((i10 & 4) != 0) {
            z9 = false;
        }
        if ((i10 & 8) != 0) {
            i4 = 0;
        }
        r(imageView, obj, f10, z9, i4);
    }

    public static final <T extends ImageView> void t(@m8.h Object obj, @m8.h Object obj2, @m8.g T imageView, @DrawableRes int i4) {
        com.bumptech.glide.j D1;
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        if (obj != null) {
            com.bumptech.glide.j w02 = com.bumptech.glide.c.E(imageView.getContext()).m(z(obj)).s().J0(new com.bumptech.glide.load.resource.bitmap.l()).w0(i4);
            if (obj2 != null && (D1 = w02.D1(com.bumptech.glide.c.F(imageView).m(obj2).J0(new com.bumptech.glide.load.resource.bitmap.l()))) != null) {
                w02 = D1;
            }
            w02.k1(imageView);
        }
    }

    public static /* synthetic */ void u(Object obj, Object obj2, ImageView imageView, int i4, int i10, Object obj3) {
        if ((i10 & 2) != 0) {
            obj2 = null;
        }
        if ((i10 & 8) != 0) {
            i4 = 0;
        }
        t(obj, obj2, imageView, i4);
    }

    public static final /* synthetic */ <T extends Serializable> void v(T t9, T to) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        Intrinsics.checkNotNullParameter(to, "to");
        Field[] declaredFields = t9.getClass().getDeclaredFields();
        Intrinsics.checkNotNullExpressionValue(declaredFields, "this::class.java.declaredFields");
        for (Field field : declaredFields) {
            boolean isAccessible = field.isAccessible();
            field.setAccessible(true);
            field.set(to, field.get(t9));
            field.setAccessible(isAccessible);
        }
    }

    public static final int w(@m8.g File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        try {
            int attributeInt = new android.media.ExifInterface(file.getAbsolutePath()).getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
            if (attributeInt != 3) {
                if (attributeInt != 6) {
                    if (attributeInt != 8) {
                        return 0;
                    }
                    return com.facebook.imagepipeline.common.e.f12206f;
                }
                return 90;
            }
            return com.facebook.imagepipeline.common.e.f12205e;
        } catch (Exception unused) {
            return 0;
        }
    }

    @m8.h
    public static final <T> Boolean x(@m8.h Collection<? extends T> collection, @m8.h Collection<? extends T> collection2) {
        if (collection2 != null) {
            boolean z9 = true;
            return Boolean.valueOf(((collection != null && collection.size() == collection2.size()) && collection.containsAll(collection2)) ? false : false);
        }
        return null;
    }

    @m8.g
    public static final String y(int i4) {
        SimpleDateFormat simpleDateFormat = f41948a;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        Integer valueOf = Integer.valueOf(i4);
        if (!(valueOf.intValue() != 0)) {
            valueOf = null;
        }
        String format = simpleDateFormat.format(new Date(timeUnit.toMillis(valueOf != null ? valueOf.intValue() : 1)));
        Intrinsics.checkNotNullExpressionValue(format, "durationFormatter.format… != 0 } ?: 1).toLong())))");
        return format;
    }

    @m8.g
    public static final Object z(@m8.g Object url) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(url, "url");
        if (url instanceof String) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default((String) url, "/", false, 2, null);
            if (startsWith$default) {
                StringBuilder sb = new StringBuilder();
                String g4 = SDKManager.f41970a.g();
                if (g4 == null) {
                    g4 = "";
                }
                sb.append(g4);
                sb.append(url);
                return sb.toString();
            }
            return url;
        }
        return url;
    }
}
