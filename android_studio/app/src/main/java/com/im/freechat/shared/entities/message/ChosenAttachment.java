package com.im.freechat.shared.entities.message;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChosenAttachment.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001aB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001b"}, d2 = {"Lcom/im/freechat/shared/entities/message/ChosenAttachment;", "", "filePath", "", "fileType", "Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;", "filename", "ext", "(Ljava/lang/String;Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;Ljava/lang/String;Ljava/lang/String;)V", "getExt", "()Ljava/lang/String;", "getFilePath", "getFileType", "()Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;", "getFilename", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "FileType", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChosenAttachment {
    @g
    private final String ext;
    @g
    private final String filePath;
    @g
    private final FileType fileType;
    @g
    private final String filename;

    /* compiled from: ChosenAttachment.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/shared/entities/message/ChosenAttachment$FileType;", "", "(Ljava/lang/String;I)V", "IMAGE_FILE", "GIF_FILE", "VIDEO_FILE", "AUDIO_FILE", "NOT_MEDIA_FILE", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum FileType {
        IMAGE_FILE,
        GIF_FILE,
        VIDEO_FILE,
        AUDIO_FILE,
        NOT_MEDIA_FILE
    }

    public ChosenAttachment(@g String filePath, @g FileType fileType, @g String filename, @g String ext) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(fileType, "fileType");
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(ext, "ext");
        this.filePath = filePath;
        this.fileType = fileType;
        this.filename = filename;
        this.ext = ext;
    }

    public static /* synthetic */ ChosenAttachment copy$default(ChosenAttachment chosenAttachment, String str, FileType fileType, String str2, String str3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = chosenAttachment.filePath;
        }
        if ((i4 & 2) != 0) {
            fileType = chosenAttachment.fileType;
        }
        if ((i4 & 4) != 0) {
            str2 = chosenAttachment.filename;
        }
        if ((i4 & 8) != 0) {
            str3 = chosenAttachment.ext;
        }
        return chosenAttachment.copy(str, fileType, str2, str3);
    }

    @g
    public final String component1() {
        return this.filePath;
    }

    @g
    public final FileType component2() {
        return this.fileType;
    }

    @g
    public final String component3() {
        return this.filename;
    }

    @g
    public final String component4() {
        return this.ext;
    }

    @g
    public final ChosenAttachment copy(@g String filePath, @g FileType fileType, @g String filename, @g String ext) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(fileType, "fileType");
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(ext, "ext");
        return new ChosenAttachment(filePath, fileType, filename, ext);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChosenAttachment) {
            ChosenAttachment chosenAttachment = (ChosenAttachment) obj;
            return Intrinsics.areEqual(this.filePath, chosenAttachment.filePath) && this.fileType == chosenAttachment.fileType && Intrinsics.areEqual(this.filename, chosenAttachment.filename) && Intrinsics.areEqual(this.ext, chosenAttachment.ext);
        }
        return false;
    }

    @g
    public final String getExt() {
        return this.ext;
    }

    @g
    public final String getFilePath() {
        return this.filePath;
    }

    @g
    public final FileType getFileType() {
        return this.fileType;
    }

    @g
    public final String getFilename() {
        return this.filename;
    }

    public int hashCode() {
        return (((((this.filePath.hashCode() * 31) + this.fileType.hashCode()) * 31) + this.filename.hashCode()) * 31) + this.ext.hashCode();
    }

    @g
    public String toString() {
        return "ChosenAttachment(filePath=" + this.filePath + ", fileType=" + this.fileType + ", filename=" + this.filename + ", ext=" + this.ext + ')';
    }
}
