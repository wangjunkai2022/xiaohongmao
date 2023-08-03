package com.im.freechat.extend;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.Patterns;
import androidx.exifinterface.media.ExifInterface;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.contact.Sender;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.AudioAttachment;
import com.im.freechat.shared.entities.message.FileAttachment;
import com.im.freechat.shared.entities.message.GifAttachment;
import com.im.freechat.shared.entities.message.ImageAttachment;
import com.im.freechat.shared.entities.message.LocationAttachment;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.shared.entities.message.VideoAttachment;
import io.sentry.protocol.y;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: MessageExtensions.kt */
@Metadata(bv = {}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005\u001a\u001a\u0010\n\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\b\u001a\u0012\u0010\f\u001a\u00020\b*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0003\u001a\n\u0010\r\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u000e\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u000f\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u0010\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u0011\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u0012\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u0013\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u0014\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u0015\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u0016\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u0017\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u0018\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u0019\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u001a\u001a\u00020\b*\u00020\u0000\u001a\n\u0010\u001c\u001a\u00020\u001b*\u00020\u0000\u001a\n\u0010\u001e\u001a\u00020\u001d*\u00020\u0000\u001a\n\u0010 \u001a\u00020\u001f*\u00020\u0000\u001a\n\u0010\"\u001a\u00020!*\u00020\u0000\u001a\n\u0010$\u001a\u00020#*\u00020\u0000\u001a\f\u0010%\u001a\u0004\u0018\u00010\u001d*\u00020\u0000\u001a\f\u0010&\u001a\u0004\u0018\u00010#*\u00020\u0000\u001a\f\u0010(\u001a\u0004\u0018\u00010'*\u00020\u0000\u001a\n\u0010*\u001a\u00020'*\u00020)\u001a\n\u0010+\u001a\u00020\u0003*\u00020)\u001a\n\u0010,\u001a\u00020'*\u00020\u001f\u001a\f\u0010-\u001a\u0004\u0018\u00010'*\u00020\u001b\u001a\n\u0010.\u001a\u00020'*\u00020\u001b\u001a\u0010\u00100\u001a\b\u0012\u0004\u0012\u00020\u00030/*\u00020\u0003\u001a\n\u00101\u001a\u00020\b*\u00020\u0003\u001a\u0018\u00105\u001a\u000204*\b\u0012\u0004\u0012\u00020\u00000/2\u0006\u00103\u001a\u000202¨\u00066"}, d2 = {"Lcom/im/freechat/shared/entities/message/Message;", "Landroid/content/Context;", "context", "", "d", "Landroid/content/res/Resources;", "resources", "e", "", "isGroup", "f", "str", "a", y.b.f83919g, "w", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "o", "s", "t", "B", "q", "r", "p", "z", "u", y.b.f83920h, "v", "Lcom/im/freechat/shared/entities/message/ImageAttachment;", "G", "Lcom/im/freechat/shared/entities/message/GifAttachment;", "F", "Lcom/im/freechat/shared/entities/message/VideoAttachment;", "H", "Lcom/im/freechat/shared/entities/message/AudioAttachment;", "D", "Lcom/im/freechat/shared/entities/message/FileAttachment;", ExifInterface.LONGITUDE_EAST, "n", "c", "", "g", "Lcom/im/freechat/shared/entities/message/Attachment;", "k", "j", ContextChain.TAG_INFRA, "h", "l", "", "m", "C", "Landroid/app/Activity;", "activity", "", "b", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class p {

    /* compiled from: Comparisons.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t9, T t10) {
            int compareValues;
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((Message) t9).getSendTime()), Long.valueOf(((Message) t10).getSendTime()));
            return compareValues;
        }
    }

    public static final boolean A(@m8.g Message message) {
        Intrinsics.checkNotNullParameter(message, "<this>");
        return message.getAttachments().isEmpty() && message.getContent() != null;
    }

    public static final boolean B(@m8.g Message message) {
        Object first;
        Intrinsics.checkNotNullParameter(message, "<this>");
        if (message.getAttachments().size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (((Attachment) first).getType() == Message.MediaType.VIDEO) {
                return true;
            }
        }
        return false;
    }

    public static final boolean C(@m8.g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return Patterns.WEB_URL.matcher(str).matches();
    }

    @m8.g
    public static final AudioAttachment D(@m8.g Message message) {
        Object first;
        Intrinsics.checkNotNullParameter(message, "<this>");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
        Intrinsics.checkNotNull(first, "null cannot be cast to non-null type com.im.freechat.shared.entities.message.AudioAttachment");
        return (AudioAttachment) first;
    }

    @m8.g
    public static final FileAttachment E(@m8.g Message message) {
        Object first;
        Intrinsics.checkNotNullParameter(message, "<this>");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
        Intrinsics.checkNotNull(first, "null cannot be cast to non-null type com.im.freechat.shared.entities.message.FileAttachment");
        return (FileAttachment) first;
    }

    @m8.g
    public static final GifAttachment F(@m8.g Message message) {
        Object first;
        Intrinsics.checkNotNullParameter(message, "<this>");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
        Intrinsics.checkNotNull(first, "null cannot be cast to non-null type com.im.freechat.shared.entities.message.GifAttachment");
        return (GifAttachment) first;
    }

    @m8.g
    public static final ImageAttachment G(@m8.g Message message) {
        Object first;
        Intrinsics.checkNotNullParameter(message, "<this>");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
        Intrinsics.checkNotNull(first, "null cannot be cast to non-null type com.im.freechat.shared.entities.message.ImageAttachment");
        return (ImageAttachment) first;
    }

    @m8.g
    public static final VideoAttachment H(@m8.g Message message) {
        Object first;
        Intrinsics.checkNotNullParameter(message, "<this>");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
        Intrinsics.checkNotNull(first, "null cannot be cast to non-null type com.im.freechat.shared.entities.message.VideoAttachment");
        return (VideoAttachment) first;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0057 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final boolean a(@m8.g com.im.freechat.shared.entities.message.Message r4, @m8.g java.lang.String r5) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "str"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = r4.getContent()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L1a
            boolean r0 = kotlin.text.StringsKt.contains(r0, r5, r2)
            if (r0 != r2) goto L1a
            r0 = 1
            goto L1b
        L1a:
            r0 = 0
        L1b:
            if (r0 != 0) goto L5a
            java.util.List r4 = r4.getAttachments()
            boolean r0 = r4 instanceof java.util.Collection
            if (r0 == 0) goto L2d
            boolean r0 = r4.isEmpty()
            if (r0 == 0) goto L2d
        L2b:
            r4 = 0
            goto L58
        L2d:
            java.util.Iterator r4 = r4.iterator()
        L31:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L2b
            java.lang.Object r0 = r4.next()
            com.im.freechat.shared.entities.message.Attachment r0 = (com.im.freechat.shared.entities.message.Attachment) r0
            boolean r3 = r0 instanceof com.im.freechat.shared.entities.message.FileAttachment
            if (r3 == 0) goto L54
            java.lang.String r0 = r0.getFileName()
            if (r0 == 0) goto L4f
            boolean r0 = kotlin.text.StringsKt.contains(r0, r5, r2)
            if (r0 != r2) goto L4f
            r0 = 1
            goto L50
        L4f:
            r0 = 0
        L50:
            if (r0 == 0) goto L54
            r0 = 1
            goto L55
        L54:
            r0 = 0
        L55:
            if (r0 == 0) goto L31
            r4 = 1
        L58:
            if (r4 == 0) goto L5b
        L5a:
            r1 = 1
        L5b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.extend.p.a(com.im.freechat.shared.entities.message.Message, java.lang.String):boolean");
    }

    public static final void b(@m8.g List<Message> list, @m8.g Activity activity) {
        List<Message> sortedWith;
        CharSequence trim;
        Sender sender;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(activity, "activity");
        StringBuilder sb = new StringBuilder();
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new a());
        Message message = null;
        for (Message message2 : sortedWith) {
            boolean z9 = false;
            if (message != null && (sender = message.getSender()) != null && message2.getSender().getUserId() == sender.getUserId()) {
                z9 = true;
            }
            if (!z9 && list.size() > 1) {
                if (message != null) {
                    sb.append("\n");
                }
                sb.append(message2.getSender().getDisplayName() + ":\n");
            }
            sb.append(d(message2, activity) + '\n');
            message = message2;
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        trim = StringsKt__StringsKt.trim((CharSequence) sb2);
        m.c(activity, trim.toString());
    }

    @m8.h
    public static final FileAttachment c(@m8.g Message message) {
        Object first;
        Intrinsics.checkNotNullParameter(message, "<this>");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
        if (first instanceof FileAttachment) {
            return (FileAttachment) first;
        }
        return null;
    }

    @m8.g
    public static final String d(@m8.g Message message, @m8.g Context context) {
        Intrinsics.checkNotNullParameter(message, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Resources resources = context.getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "context.resources");
        return e(message, resources);
    }

    @m8.g
    public static final String e(@m8.g Message message, @m8.g Resources resources) {
        Object first;
        Object first2;
        Object first3;
        Object first4;
        Object first5;
        Object first6;
        Object first7;
        Intrinsics.checkNotNullParameter(message, "<this>");
        Intrinsics.checkNotNullParameter(resources, "resources");
        if (message.getAttachments().isEmpty()) {
            String content = message.getContent();
            return content == null ? "" : content;
        } else if (message.getAttachments().size() > 1) {
            String string = resources.getString(b.s.f2434x2);
            Intrinsics.checkNotNullExpressionValue(string, "resources.getString(R.string.album)");
            return string;
        } else {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (first instanceof ImageAttachment) {
                return '[' + resources.getString(b.s.f2448y6) + ']';
            }
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (first2 instanceof GifAttachment) {
                return '[' + resources.getString(b.s.U4) + ']';
            }
            first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (first3 instanceof VideoAttachment) {
                return '[' + resources.getString(b.s.K9) + ']';
            }
            first4 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (first4 instanceof AudioAttachment) {
                return '[' + resources.getString(b.s.L9) + ']';
            }
            first5 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (!(first5 instanceof FileAttachment)) {
                first6 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
                if (first6 instanceof LocationAttachment) {
                    String string2 = resources.getString(b.s.G6);
                    Intrinsics.checkNotNullExpressionValue(string2, "resources.getString(R.string.location)");
                    return string2;
                }
                throw new IllegalStateException("No content for message".toString());
            }
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            sb.append(resources.getString(b.s.L4));
            sb.append(": ");
            first7 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            Intrinsics.checkNotNull(first7, "null cannot be cast to non-null type com.im.freechat.shared.entities.message.FileAttachment");
            sb.append(((FileAttachment) first7).getFileName());
            sb.append(']');
            return sb.toString();
        }
    }

    @m8.g
    public static final String f(@m8.g Message message, @m8.g Context context, boolean z9) {
        Object first;
        Object first2;
        Object first3;
        Object first4;
        Object first5;
        Object first6;
        Object first7;
        Intrinsics.checkNotNullParameter(message, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        if (message.getAttachments().isEmpty()) {
            String content = message.getContent();
            return content == null ? "" : content;
        } else if (message.getAttachments().size() > 1) {
            String string = context.getString(b.s.f2434x2);
            Intrinsics.checkNotNullExpressionValue(string, "context.getString(R.string.album)");
            return string;
        } else {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (first instanceof ImageAttachment) {
                return '[' + context.getString(b.s.f2448y6) + ']';
            }
            first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (first2 instanceof GifAttachment) {
                return '[' + context.getString(b.s.U4) + ']';
            }
            first3 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (first3 instanceof VideoAttachment) {
                return '[' + context.getString(b.s.K9) + ']';
            }
            first4 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (first4 instanceof AudioAttachment) {
                return '[' + context.getString(b.s.L9) + ']';
            }
            first5 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (!(first5 instanceof FileAttachment)) {
                first6 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
                if (first6 instanceof LocationAttachment) {
                    String string2 = context.getString(b.s.G6);
                    Intrinsics.checkNotNullExpressionValue(string2, "context.getString(R.string.location)");
                    return string2;
                }
                throw new IllegalStateException("No content for message".toString());
            }
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            sb.append(context.getString(b.s.L4));
            sb.append(": ");
            first7 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            Intrinsics.checkNotNull(first7, "null cannot be cast to non-null type com.im.freechat.shared.entities.message.FileAttachment");
            sb.append(((FileAttachment) first7).getFileName());
            sb.append(']');
            return sb.toString();
        }
    }

    @m8.h
    public static final Object g(@m8.g Message message) {
        Object firstOrNull;
        Object remoteUrl;
        Intrinsics.checkNotNullParameter(message, "<this>");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) message.getAttachments());
        Attachment attachment = (Attachment) firstOrNull;
        if (attachment instanceof ImageAttachment) {
            ImageAttachment imageAttachment = (ImageAttachment) attachment;
            String localPath = imageAttachment.getLocalPath();
            return localPath != null ? new File(localPath) : imageAttachment.getRemoteUrl();
        } else if (attachment instanceof VideoAttachment) {
            VideoAttachment videoAttachment = (VideoAttachment) attachment;
            String previewLocalPath = videoAttachment.getPreviewLocalPath();
            if (previewLocalPath != null) {
                remoteUrl = new File(previewLocalPath);
            } else {
                String previewRemoteUrl = videoAttachment.getPreviewRemoteUrl();
                if (previewRemoteUrl != null) {
                    return previewRemoteUrl;
                }
                String localPath2 = videoAttachment.getLocalPath();
                File file = localPath2 != null ? new File(localPath2) : null;
                if (file != null) {
                    return file;
                }
                remoteUrl = videoAttachment.getRemoteUrl();
            }
            return remoteUrl;
        } else {
            return null;
        }
    }

    @m8.h
    public static final Object h(@m8.g ImageAttachment imageAttachment) {
        Intrinsics.checkNotNullParameter(imageAttachment, "<this>");
        String previewLocalPath = imageAttachment.getPreviewLocalPath();
        return previewLocalPath != null ? new File(previewLocalPath) : imageAttachment.getPreviewRemoteUrl();
    }

    @m8.g
    public static final Object i(@m8.g VideoAttachment videoAttachment) {
        Intrinsics.checkNotNullParameter(videoAttachment, "<this>");
        String previewLocalPath = videoAttachment.getPreviewLocalPath();
        if (previewLocalPath != null) {
            return new File(previewLocalPath);
        }
        Object previewRemoteUrl = videoAttachment.getPreviewRemoteUrl();
        if (previewRemoteUrl == null) {
            String localPath = videoAttachment.getLocalPath();
            previewRemoteUrl = localPath != null ? new File(localPath) : null;
            if (previewRemoteUrl == null) {
                String remoteUrl = videoAttachment.getRemoteUrl();
                if (remoteUrl != null) {
                    return remoteUrl;
                }
                throw new IllegalStateException("Either local or remote url should not be null!".toString());
            }
        }
        return previewRemoteUrl;
    }

    @m8.g
    public static final String j(@m8.g Attachment attachment) {
        Intrinsics.checkNotNullParameter(attachment, "<this>");
        String localPath = attachment.getLocalPath();
        if (localPath == null && (localPath = attachment.getRemoteUrl()) == null) {
            throw new IllegalStateException("Either local or remote url should not be null!".toString());
        }
        return localPath;
    }

    @m8.g
    public static final Object k(@m8.g Attachment attachment) {
        Intrinsics.checkNotNullParameter(attachment, "<this>");
        String localPath = attachment.getLocalPath();
        if (localPath != null) {
            return new File(localPath);
        }
        String remoteUrl = attachment.getRemoteUrl();
        if (remoteUrl != null) {
            return remoteUrl;
        }
        throw new IllegalStateException("Either local or remote url should not be null!".toString());
    }

    @m8.g
    public static final Object l(@m8.g ImageAttachment imageAttachment) {
        Intrinsics.checkNotNullParameter(imageAttachment, "<this>");
        String localPath = imageAttachment.getLocalPath();
        if (localPath != null) {
            return new File(localPath);
        }
        String remoteUrl = imageAttachment.getRemoteUrl();
        if (remoteUrl != null) {
            return remoteUrl;
        }
        throw new IllegalStateException("Either local or remote url should not be null!".toString());
    }

    @m8.g
    public static final List<String> m(@m8.g String str) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(str, "<this>");
        List<String> split = new Regex("\\s+").split(str, 0);
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : split) {
            String str2 = (String) obj;
            if (m.n(str2) || C(str2)) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (String str3 : arrayList) {
            String lowerCase = str3.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            arrayList2.add(lowerCase);
        }
        return arrayList2;
    }

    @m8.h
    public static final GifAttachment n(@m8.g Message message) {
        Object first;
        Intrinsics.checkNotNullParameter(message, "<this>");
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
        if (first instanceof GifAttachment) {
            return (GifAttachment) first;
        }
        return null;
    }

    public static final boolean o(@m8.g Message message) {
        Intrinsics.checkNotNullParameter(message, "<this>");
        String content = message.getContent();
        return !(content == null || content.length() == 0);
    }

    public static final boolean p(@m8.g Message message) {
        Object first;
        Intrinsics.checkNotNullParameter(message, "<this>");
        if (message.getAttachments().size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (((Attachment) first).getType() == Message.MediaType.AUDIO) {
                return true;
            }
        }
        return false;
    }

    public static final boolean q(@m8.g Message message) {
        Object first;
        Object first2;
        boolean equals;
        Intrinsics.checkNotNullParameter(message, "<this>");
        if (message.getAttachments().size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (((Attachment) first).getType() == Message.MediaType.FILE) {
                first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
                Intrinsics.checkNotNull(first2, "null cannot be cast to non-null type com.im.freechat.shared.entities.message.FileAttachment");
                equals = StringsKt__StringsJVMKt.equals(((FileAttachment) first2).getMimeType(), "gif", true);
                if (!equals) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean r(@m8.g Message message) {
        Object first;
        Object first2;
        boolean equals;
        Intrinsics.checkNotNullParameter(message, "<this>");
        if (message.getAttachments().size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (((Attachment) first).getType() == Message.MediaType.FILE) {
                first2 = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
                Intrinsics.checkNotNull(first2, "null cannot be cast to non-null type com.im.freechat.shared.entities.message.FileAttachment");
                equals = StringsKt__StringsJVMKt.equals(((FileAttachment) first2).getMimeType(), "gif", true);
                if (equals) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean s(@m8.g Message message) {
        Object first;
        Intrinsics.checkNotNullParameter(message, "<this>");
        if (message.getAttachments().size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (((Attachment) first).getType() == Message.MediaType.GIF) {
                return true;
            }
        }
        return false;
    }

    public static final boolean t(@m8.g Message message) {
        Object first;
        Intrinsics.checkNotNullParameter(message, "<this>");
        if (message.getAttachments().size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (((Attachment) first).getType() == Message.MediaType.IMAGE) {
                return true;
            }
        }
        return false;
    }

    public static final boolean u(@m8.g Message message) {
        Object first;
        Intrinsics.checkNotNullParameter(message, "<this>");
        if (message.getAttachments().size() == 1) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            if (((Attachment) first).getType() == Message.MediaType.LOCATION) {
                return true;
            }
        }
        return false;
    }

    public static final boolean v(@m8.g Message message) {
        Intrinsics.checkNotNullParameter(message, "<this>");
        return t(message) || B(message) || y(message);
    }

    public static final boolean w(@m8.g Message message) {
        Intrinsics.checkNotNullParameter(message, "<this>");
        return message.getEditTime() != null;
    }

    public static final boolean x(@m8.g Message message) {
        Intrinsics.checkNotNullParameter(message, "<this>");
        return (message.getForwardMessageSender() == null || message.getForwardMessageChatId() == null) ? false : true;
    }

    public static final boolean y(@m8.g Message message) {
        Intrinsics.checkNotNullParameter(message, "<this>");
        return message.getAttachments().size() > 1;
    }

    public static final boolean z(@m8.g Message message) {
        Intrinsics.checkNotNullParameter(message, "<this>");
        String content = message.getContent();
        return !(content == null || content.length() == 0) && message.isService();
    }
}
