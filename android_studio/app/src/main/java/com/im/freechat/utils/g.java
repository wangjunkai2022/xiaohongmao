package com.im.freechat.utils;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.util.Size;
import android.webkit.MimeTypeMap;
import androidx.core.net.UriKt;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.FileInfo;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.AudioAttachment;
import com.im.freechat.shared.entities.message.ChosenAttachment;
import com.im.freechat.shared.entities.message.FileAttachment;
import com.im.freechat.shared.entities.message.ImageAttachment;
import com.im.freechat.shared.entities.message.VideoAttachment;
import com.rudresh.videocompression.videocompression.QualityPreset;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okio.BufferedSink;
import okio.Okio;
import okio.Okio__JvmOkioKt;
import okio.Sink;
import okio.Source;
import timber.log.Timber;

/* compiled from: FileUtility.kt */
@Metadata(bv = {}, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010,\u001a\u00020\t\u0012\u0006\u0010/\u001a\u00020-¢\u0006\u0004\b0\u00101J\u000e\u0010\u0004\u001a\u00020\u0003*\u0004\u0018\u00010\u0002H\u0002J\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0002J\u001a\u0010\f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016J-\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0010H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u0002H\u0016J\u0012\u0010 \u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0018\u001a\u00020\u0002H\u0017J<\u0010&\u001a\u00020\u001e2\b\u0010!\u001a\u0004\u0018\u00010\u001e2\b\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\"\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#H\u0016J&\u0010)\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020'2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#J\u0012\u0010*\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010,\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010+R\u0014\u0010/\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010.\u0082\u0002\u0004\n\u0002\b\u0019¨\u00062"}, d2 = {"Lcom/im/freechat/utils/g;", "Lcom/im/freechat/domain/h;", "", "", "k", "Landroid/net/Uri;", "initialUri", "extension", "j", "Landroid/content/ContentResolver;", "resolver", "uri", "l", "Lcom/im/freechat/shared/entities/message/Attachment;", "attachment", "h", "", "messageId", "tempId", "c", "(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "initialUriString", "Lcom/im/freechat/shared/entities/message/ChosenAttachment;", "f", "uriString", "Lcom/im/freechat/shared/entities/FileInfo;", "e", "Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;", "b", "path", "Ljava/io/File;", "a", "g", "file", "name", "", "maxWidth", "maxHeight", ContextChain.TAG_INFRA, "Landroid/graphics/Bitmap;", "bitmap", "m", "d", "Landroid/content/ContentResolver;", "contentResolver", "Landroid/content/Context;", "Landroid/content/Context;", "appContext", "<init>", "(Landroid/content/ContentResolver;Landroid/content/Context;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g implements com.im.freechat.domain.h {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final ContentResolver f43779a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Context f43780b;

    /* compiled from: FileUtility.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChosenAttachment.FileType.values().length];
            iArr[ChosenAttachment.FileType.IMAGE_FILE.ordinal()] = 1;
            iArr[ChosenAttachment.FileType.VIDEO_FILE.ordinal()] = 2;
            iArr[ChosenAttachment.FileType.AUDIO_FILE.ordinal()] = 3;
            iArr[ChosenAttachment.FileType.GIF_FILE.ordinal()] = 4;
            iArr[ChosenAttachment.FileType.NOT_MEDIA_FILE.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public g(@m8.g ContentResolver contentResolver, @m8.g Context appContext) {
        Intrinsics.checkNotNullParameter(contentResolver, "contentResolver");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.f43779a = contentResolver;
        this.f43780b = appContext;
    }

    private final String j(Uri uri, String str) {
        Sink sink$default;
        InputStream openInputStream = this.f43779a.openInputStream(uri);
        Source source = openInputStream != null ? Okio.source(openInputStream) : null;
        try {
            File c10 = com.im.freechat.extend.r.c(d(str));
            Intrinsics.checkNotNull(c10);
            sink$default = Okio__JvmOkioKt.sink$default(c10, false, 1, null);
            BufferedSink buffer = Okio.buffer(sink$default);
            Intrinsics.checkNotNull(source);
            buffer.writeAll(source);
            String path = c10.getPath();
            CloseableKt.closeFinally(buffer, null);
            CloseableKt.closeFinally(source, null);
            Intrinsics.checkNotNullExpressionValue(path, "inputStream?.source().us…h\n            }\n        }");
            return path;
        } finally {
        }
    }

    private final boolean k(String str) {
        boolean startsWith$default;
        boolean contains$default;
        if (str != null) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "image", false, 2, null);
            if (startsWith$default) {
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "gif", false, 2, (Object) null);
                return !contains$default;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
        if (r8 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.String l(android.content.ContentResolver r8, android.net.Uri r9) {
        /*
            r7 = this;
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r0 = r8
            r1 = r9
            android.database.Cursor r8 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L22 java.lang.Exception -> L29
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L2a
            java.lang.String r9 = "_display_name"
            int r9 = r8.getColumnIndex(r9)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L2a
            r8.moveToFirst()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L2a
            java.lang.String r6 = r8.getString(r9)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L2a
        L1b:
            r8.close()
            goto L2d
        L1f:
            r9 = move-exception
            r6 = r8
            goto L23
        L22:
            r9 = move-exception
        L23:
            if (r6 == 0) goto L28
            r6.close()
        L28:
            throw r9
        L29:
            r8 = r6
        L2a:
            if (r8 == 0) goto L2d
            goto L1b
        L2d:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.utils.g.l(android.content.ContentResolver, android.net.Uri):java.lang.String");
    }

    @Override // com.im.freechat.domain.h
    @m8.g
    public File a(@m8.g String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        File file = new File(path);
        long length = file.length();
        Timber.b bVar = Timber.f93860a;
        bVar.k("Attachment original: " + file.getPath() + ", size: " + length, new Object[0]);
        File cacheDir = this.f43780b.getCacheDir();
        StringBuilder sb = new StringBuilder();
        sb.append("compressed_");
        sb.append(file.getName());
        File a10 = com.rudresh.videocompression.videocompression.e.c().a(file.getAbsolutePath(), new File(cacheDir, sb.toString()).getAbsolutePath(), QualityPreset.MEDIUM);
        if (a10 != null) {
            bVar.k("Compression success! Attachment compressed: " + a10.getPath() + ", size: " + Long.valueOf(a10.length()), new Object[0]);
            return a10;
        }
        bVar.d("Compression failed! Proceed with original video file.", new Object[0]);
        throw new IllegalStateException();
    }

    @Override // com.im.freechat.domain.h
    @m8.g
    public ChosenAttachment.FileType b(@m8.g String initialUriString) {
        boolean contains$default;
        boolean startsWith$default;
        String extension;
        Intrinsics.checkNotNullParameter(initialUriString, "initialUriString");
        Uri parse = Uri.parse(initialUriString);
        Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) initialUriString, (CharSequence) "voice", false, 2, (Object) null);
        if (contains$default) {
            return ChosenAttachment.FileType.AUDIO_FILE;
        }
        String uri = parse.toString();
        Intrinsics.checkNotNullExpressionValue(uri, "initialUri.toString()");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(uri, "file:", false, 2, null);
        if (startsWith$default) {
            File file = UriKt.toFile(parse);
            MimeTypeMap singleton = MimeTypeMap.getSingleton();
            extension = FilesKt__UtilsKt.getExtension(file);
            return h.a(singleton.getMimeTypeFromExtension(extension));
        }
        return h.a(this.f43779a.getType(parse));
    }

    @Override // com.im.freechat.domain.h
    @m8.h
    public Object c(long j4, @m8.g String str, long j10, @m8.g Continuation<? super Attachment> continuation) {
        String extension;
        File file;
        int i4;
        int i10;
        String extension2;
        String extension3;
        try {
            ChosenAttachment f10 = f(str);
            File file2 = new File(f10.getFilePath());
            int i11 = a.$EnumSwitchMapping$0[f10.getFileType().ordinal()];
            if (i11 == 1) {
                Size k10 = com.im.freechat.extend.m.k(file2);
                String filePath = f10.getFilePath();
                String filename = f10.getFilename();
                int height = k10.getHeight();
                int width = k10.getWidth();
                extension = FilesKt__UtilsKt.getExtension(file2);
                return new ImageAttachment(j10, j4, filePath, null, filename, extension, null, null, width, height);
            }
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4 && i11 != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    String filePath2 = f10.getFilePath();
                    String filename2 = f10.getFilename();
                    long length = file2.length();
                    extension3 = FilesKt__UtilsKt.getExtension(file2);
                    return new FileAttachment(j10, j4, filePath2, null, filename2, extension3, length);
                }
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                mediaMetadataRetriever.setDataSource(f10.getFilePath());
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
                long seconds = timeUnit.toSeconds(extractMetadata != null ? Long.parseLong(extractMetadata) : 0L);
                mediaMetadataRetriever.close();
                return new AudioAttachment(j10, j4, f10.getFilePath(), null, f10.getFilename(), (int) seconds);
            }
            MediaMetadataRetriever mediaMetadataRetriever2 = new MediaMetadataRetriever();
            mediaMetadataRetriever2.setDataSource(file2.getAbsolutePath());
            Bitmap frameAtTime = mediaMetadataRetriever2.getFrameAtTime();
            if (frameAtTime != null) {
                i4 = frameAtTime.getWidth();
                i10 = frameAtTime.getHeight();
                file = m(frameAtTime, "jpg", 1024, 1024);
            } else {
                file = null;
                i4 = 0;
                i10 = 0;
            }
            TimeUnit timeUnit2 = TimeUnit.MILLISECONDS;
            String extractMetadata2 = mediaMetadataRetriever2.extractMetadata(9);
            long seconds2 = timeUnit2.toSeconds(extractMetadata2 != null ? Long.parseLong(extractMetadata2) : 0L);
            mediaMetadataRetriever2.close();
            Integer boxInt = Boxing.boxInt((int) seconds2);
            if (!(boxInt.intValue() > 0)) {
                boxInt = null;
            }
            int intValue = boxInt != null ? boxInt.intValue() : 1;
            String absolutePath = file2.getAbsolutePath();
            String absolutePath2 = file != null ? file.getAbsolutePath() : null;
            long length2 = file2.length();
            String filename3 = f10.getFilename();
            extension2 = FilesKt__UtilsKt.getExtension(file2);
            return new VideoAttachment(j10, j4, absolutePath, null, filename3, extension2, Boxing.boxInt(i4), Boxing.boxInt(i10), null, absolutePath2, length2, intValue);
        } catch (Exception e4) {
            Timber.f93860a.e(e4);
            return null;
        }
    }

    @Override // com.im.freechat.domain.h
    @m8.g
    public String d(@m8.h String str) {
        String format = new SimpleDateFormat("yyyyMMdd_HHmmss_SSS", Locale.US).format(new Date(System.currentTimeMillis()));
        String absolutePath = new File(this.f43780b.getCacheDir(), "tempfile_" + format + '.' + str).getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "File(appContext.cacheDir, name).absolutePath");
        return absolutePath;
    }

    @Override // com.im.freechat.domain.h
    @m8.h
    public FileInfo e(@m8.h String str) {
        boolean endsWith$default;
        String str2;
        if (str != null) {
            Uri parse = Uri.parse(str);
            Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
            if (parse != null) {
                Cursor query = this.f43779a.query(parse, null, null, null, null);
                boolean z9 = true;
                if ((query == null || !query.moveToFirst()) ? false : false) {
                    int columnIndex = query.getColumnIndex(com.im.freechat.ui.chat.history.o.f42921d);
                    int columnIndex2 = query.getColumnIndex("_display_name");
                    int columnIndex3 = query.getColumnIndex("_size");
                    String name = query.getString(columnIndex2);
                    long j4 = query.getLong(columnIndex3);
                    try {
                        str2 = query.getString(columnIndex);
                        Intrinsics.checkNotNullExpressionValue(str2, "cursor.getString(mimeColumnIndex)");
                    } catch (Exception unused) {
                        Intrinsics.checkNotNullExpressionValue(name, "name");
                        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(name, "3gp", false, 2, null);
                        str2 = endsWith$default ? "video/3gp" : "";
                    }
                    query.close();
                    return new FileInfo(str, str2, j4);
                }
                return null;
            }
            return null;
        }
        return null;
    }

    @Override // com.im.freechat.domain.h
    @m8.g
    public ChosenAttachment f(@m8.g String initialUriString) {
        boolean startsWith$default;
        String str;
        File file;
        String str2;
        Intrinsics.checkNotNullParameter(initialUriString, "initialUriString");
        Uri parse = Uri.parse(initialUriString);
        Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
        ChosenAttachment.FileType b10 = b(initialUriString);
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(initialUriString, "file:", false, 2, null);
        if (startsWith$default) {
            file = UriKt.toFile(parse);
            str2 = file.getName();
            Intrinsics.checkNotNullExpressionValue(str2, "file.name");
            str = StringsKt__StringsKt.substringAfterLast(str2, ".", "");
            Intrinsics.checkNotNull(MimeTypeMap.getSingleton().getMimeTypeFromExtension(str));
        } else {
            String type = this.f43779a.getType(parse);
            Intrinsics.checkNotNull(type);
            String l10 = l(this.f43779a, parse);
            Intrinsics.checkNotNull(l10);
            String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(type);
            if (extensionFromMimeType == null) {
                extensionFromMimeType = StringsKt__StringsKt.substringAfterLast(l10, ".", "");
            }
            str = extensionFromMimeType;
            file = new File(j(parse, str));
            str2 = l10;
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "outputFile.absolutePath");
        return new ChosenAttachment(absolutePath, b10, str2, str);
    }

    @Override // com.im.freechat.domain.h
    @m8.h
    @SuppressLint({"DefaultLocale"})
    public String g(@m8.g String uriString) {
        Intrinsics.checkNotNullParameter(uriString, "uriString");
        Uri parse = Uri.parse(uriString);
        Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
        if (Intrinsics.areEqual(parse.getScheme(), "content")) {
            return this.f43780b.getContentResolver().getType(parse);
        }
        String fileExtension = MimeTypeMap.getFileExtensionFromUrl(parse.toString());
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        Intrinsics.checkNotNullExpressionValue(fileExtension, "fileExtension");
        String lowerCase = fileExtension.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return singleton.getMimeTypeFromExtension(lowerCase);
    }

    @Override // com.im.freechat.domain.h
    @m8.g
    public Attachment h(@m8.g Attachment attachment) {
        String substringBeforeLast$default;
        String substringBeforeLast$default2;
        ImageAttachment copy;
        int i4;
        String previewLocalPath;
        VideoAttachment copy2;
        Intrinsics.checkNotNullParameter(attachment, "attachment");
        File file = null;
        if (attachment instanceof ImageAttachment) {
            try {
                String localPath = attachment.getLocalPath();
                Intrinsics.checkNotNull(localPath);
                File file2 = new File(localPath);
                StringBuilder sb = new StringBuilder();
                String name = file2.getName();
                Intrinsics.checkNotNullExpressionValue(name, "file.name");
                substringBeforeLast$default = StringsKt__StringsKt.substringBeforeLast$default(name, '.', (String) null, 2, (Object) null);
                sb.append(substringBeforeLast$default);
                sb.append("_preview");
                String sb2 = sb.toString();
                String mimeType = ((ImageAttachment) attachment).getMimeType();
                Intrinsics.checkNotNull(mimeType);
                String absolutePath = i(file2, null, sb2, mimeType, 128, 128).getAbsolutePath();
                String name2 = file2.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "file.name");
                substringBeforeLast$default2 = StringsKt__StringsKt.substringBeforeLast$default(name2, '.', (String) null, 2, (Object) null);
                String mimeType2 = ((ImageAttachment) attachment).getMimeType();
                Intrinsics.checkNotNull(mimeType2);
                copy = r14.copy((r26 & 1) != 0 ? r14.getMediaId() : 0L, (r26 & 2) != 0 ? r14.getMessageId() : 0L, (r26 & 4) != 0 ? r14.getLocalPath() : i(file2, null, substringBeforeLast$default2, mimeType2, h.f43782b, h.f43782b).getAbsolutePath(), (r26 & 8) != 0 ? r14.getRemoteUrl() : null, (r26 & 16) != 0 ? r14.getFileName() : null, (r26 & 32) != 0 ? r14.mimeType : null, (r26 & 64) != 0 ? r14.previewRemoteUrl : null, (r26 & 128) != 0 ? r14.previewLocalPath : absolutePath, (r26 & 256) != 0 ? r14.width : 0, (r26 & 512) != 0 ? ((ImageAttachment) attachment).height : 0);
                return copy;
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else if (attachment instanceof VideoAttachment) {
            try {
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                String localPath2 = attachment.getLocalPath();
                Intrinsics.checkNotNull(localPath2);
                File a10 = a(localPath2);
                mediaMetadataRetriever.setDataSource(a10.getAbsolutePath());
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime();
                int i10 = 0;
                if (frameAtTime != null) {
                    i10 = frameAtTime.getWidth();
                    i4 = frameAtTime.getHeight();
                    file = m(frameAtTime, "jpg", 1024, 1024);
                } else {
                    i4 = 0;
                }
                mediaMetadataRetriever.close();
                VideoAttachment videoAttachment = (VideoAttachment) attachment;
                if (file == null || (previewLocalPath = file.getAbsolutePath()) == null) {
                    previewLocalPath = ((VideoAttachment) attachment).getPreviewLocalPath();
                }
                copy2 = videoAttachment.copy((r32 & 1) != 0 ? videoAttachment.getMediaId() : 0L, (r32 & 2) != 0 ? videoAttachment.getMessageId() : 0L, (r32 & 4) != 0 ? videoAttachment.getLocalPath() : a10.getAbsolutePath(), (r32 & 8) != 0 ? videoAttachment.getRemoteUrl() : null, (r32 & 16) != 0 ? videoAttachment.getFileName() : null, (r32 & 32) != 0 ? videoAttachment.mimeType : null, (r32 & 64) != 0 ? videoAttachment.width : Integer.valueOf(i10), (r32 & 128) != 0 ? videoAttachment.height : Integer.valueOf(i4), (r32 & 256) != 0 ? videoAttachment.previewRemoteUrl : null, (r32 & 512) != 0 ? videoAttachment.previewLocalPath : previewLocalPath, (r32 & 1024) != 0 ? videoAttachment.fileSize : a10.length(), (r32 & 2048) != 0 ? videoAttachment.duration : 0);
                return copy2;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return attachment;
    }

    @Override // com.im.freechat.domain.h
    @m8.g
    public File i(@m8.h File file, @m8.h String str, @m8.g String name, @m8.g String extension, int i4, int i10) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(extension, "extension");
        if (file == null) {
            Uri parse = Uri.parse(str);
            Intrinsics.checkNotNullExpressionValue(parse, "parse(uri)");
            file = new File(j(parse, extension));
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        options.inSampleSize = com.im.freechat.extend.f.f(options, i10, i4);
        options.inJustDecodeBounds = false;
        Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        if (decodeFile == null) {
            return file;
        }
        float max = Math.max((decodeFile.getWidth() * 1.0f) / i4, (decodeFile.getHeight() * 1.0f) / i10);
        Matrix matrix = new Matrix();
        float f10 = 1.0f / max;
        matrix.postScale(f10, f10);
        matrix.postRotate(com.im.freechat.extend.m.w(file));
        Bitmap createBitmap = Bitmap.createBitmap(decodeFile, 0, 0, decodeFile.getWidth(), decodeFile.getHeight(), matrix, true);
        File cacheDir = this.f43780b.getCacheDir();
        File file2 = new File(cacheDir, name + ".webp");
        FileOutputStream a10 = l.b.a(new FileOutputStream(file2), file2);
        try {
            createBitmap.compress(Build.VERSION.SDK_INT >= 30 ? Bitmap.CompressFormat.WEBP_LOSSLESS : Bitmap.CompressFormat.WEBP, 100, a10);
            createBitmap.recycle();
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(a10, null);
            return file2;
        } finally {
        }
    }

    @m8.g
    public final File m(@m8.g Bitmap bitmap, @m8.g String extension, int i4, int i10) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(extension, "extension");
        float max = Math.max((bitmap.getWidth() * 1.0f) / i4, (bitmap.getHeight() * 1.0f) / i10);
        Matrix matrix = new Matrix();
        float f10 = 1 / max;
        matrix.postScale(f10, f10);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        File file = new File(d(extension));
        FileOutputStream a10 = l.b.a(new FileOutputStream(file), file);
        try {
            createBitmap.compress(com.im.freechat.extend.m.a(file), 100, a10);
            createBitmap.recycle();
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(a10, null);
            return file;
        } finally {
        }
    }
}
