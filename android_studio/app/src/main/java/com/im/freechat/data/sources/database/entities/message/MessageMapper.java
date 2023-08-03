package com.im.freechat.data.sources.database.entities.message;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.im.freechat.data.openapigen.models.Animation;
import com.im.freechat.data.openapigen.models.Document;
import com.im.freechat.data.openapigen.models.MediaGroup;
import com.im.freechat.data.openapigen.models.MediaGroupItemsInner;
import com.im.freechat.data.openapigen.models.MessageEntities;
import com.im.freechat.data.openapigen.models.MessageEntitiesItemsInner;
import com.im.freechat.data.openapigen.models.MessageEntitiesItemsInnerBold;
import com.im.freechat.data.openapigen.models.MessageEntitiesItemsInnerUrl;
import com.im.freechat.data.openapigen.models.Photo;
import com.im.freechat.data.openapigen.models.User;
import com.im.freechat.data.openapigen.models.Video;
import com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity;
import com.im.freechat.data.sources.database.entities.attachment.HttpAttachmentEntity;
import com.im.freechat.data.sources.database.entities.contact.UserEntityMapper;
import com.im.freechat.shared.entities.contact.Sender;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.AudioAttachment;
import com.im.freechat.shared.entities.message.FileAttachment;
import com.im.freechat.shared.entities.message.GifAttachment;
import com.im.freechat.shared.entities.message.ImageAttachment;
import com.im.freechat.shared.entities.message.LocationAttachment;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.shared.entities.message.MessageStyle;
import com.im.freechat.shared.entities.message.VideoAttachment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: MessageMapper.kt */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u00011B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0018\u0010\b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\rJ\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002J&\u0010\u0011\u001a\u0004\u0018\u00010\u00152\b\u0010\u0013\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0015J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001bJ8\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00150\u00062\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00160\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u001eJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007J\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u000e\u0010$\u001a\u00020%2\u0006\u0010\n\u001a\u00020\u0015J5\u0010&\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010%\u0012\f\u0012\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00060'2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010(\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010)J\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010+\u001a\u00020\u0004J\u0014\u0010,\u001a\u00020\t*\u00020-2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u0014\u0010,\u001a\u00020\t*\u00020.2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u0014\u0010,\u001a\u00020\t*\u00020/2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\u0014\u0010,\u001a\u00020\t*\u0002002\u0006\u0010\u0010\u001a\u00020\rH\u0002¨\u00062"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;", "", "()V", "attachmentsToMediaGroup", "Lcom/im/freechat/data/openapigen/models/MediaGroup;", "attachments", "", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;", "getAttachmentEntities", "Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;", "message", "Lcom/im/freechat/data/openapigen/models/Message;", "getMediaId", "", "remoteUrl", "", "messageId", "map", "Lcom/im/freechat/shared/entities/message/MessageStyle;", "entity", "Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInner;", "Lcom/im/freechat/shared/entities/message/Message;", "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;", "contactMapper", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;", "repliedMessage", "attachment", "Lcom/im/freechat/shared/entities/message/Attachment;", "entities", "repliedMessages", "", "mapAttachment", "mapTarget", "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;", TypedValues.Attributes.S_TARGET, "Lcom/im/freechat/data/openapigen/models/MessageEntitiesItemsInnerUrl$Target;", "mapToEntity", "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;", "mapToEntityAndAttachment", "Lkotlin/Pair;", "lastReadMessageId", "(Lcom/im/freechat/data/openapigen/models/Message;Ljava/lang/Long;)Lkotlin/Pair;", "mediaToAttachments", "media", "toAttachmentEntity", "Lcom/im/freechat/data/openapigen/models/Animation;", "Lcom/im/freechat/data/openapigen/models/Document;", "Lcom/im/freechat/data/openapigen/models/Photo;", "Lcom/im/freechat/data/openapigen/models/Video;", "MediaIdGenerator", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MessageMapper {

    /* compiled from: MessageMapper.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/message/MessageMapper$MediaIdGenerator;", "", "remoteUrl", "", "messageId", "", "(Ljava/lang/String;J)V", "getMessageId", "()J", "getRemoteUrl", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class MediaIdGenerator {
        private final long messageId;
        @g
        private final String remoteUrl;

        public MediaIdGenerator(@g String remoteUrl, long j4) {
            Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
            this.remoteUrl = remoteUrl;
            this.messageId = j4;
        }

        public static /* synthetic */ MediaIdGenerator copy$default(MediaIdGenerator mediaIdGenerator, String str, long j4, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = mediaIdGenerator.remoteUrl;
            }
            if ((i4 & 2) != 0) {
                j4 = mediaIdGenerator.messageId;
            }
            return mediaIdGenerator.copy(str, j4);
        }

        @g
        public final String component1() {
            return this.remoteUrl;
        }

        public final long component2() {
            return this.messageId;
        }

        @g
        public final MediaIdGenerator copy(@g String remoteUrl, long j4) {
            Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
            return new MediaIdGenerator(remoteUrl, j4);
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MediaIdGenerator) {
                MediaIdGenerator mediaIdGenerator = (MediaIdGenerator) obj;
                return Intrinsics.areEqual(this.remoteUrl, mediaIdGenerator.remoteUrl) && this.messageId == mediaIdGenerator.messageId;
            }
            return false;
        }

        public final long getMessageId() {
            return this.messageId;
        }

        @g
        public final String getRemoteUrl() {
            return this.remoteUrl;
        }

        public int hashCode() {
            return (this.remoteUrl.hashCode() * 31) + a5.a.a(this.messageId);
        }

        @g
        public String toString() {
            return "MediaIdGenerator(remoteUrl=" + this.remoteUrl + ", messageId=" + this.messageId + ')';
        }
    }

    /* compiled from: MessageMapper.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Message.MediaType.values().length];
            iArr[Message.MediaType.IMAGE.ordinal()] = 1;
            iArr[Message.MediaType.GIF.ordinal()] = 2;
            iArr[Message.MediaType.AUDIO.ordinal()] = 3;
            iArr[Message.MediaType.VIDEO.ordinal()] = 4;
            iArr[Message.MediaType.LOCATION.ordinal()] = 5;
            iArr[Message.MediaType.FILE.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[MessageEntitiesItemsInnerUrl.Target.values().length];
            iArr2[MessageEntitiesItemsInnerUrl.Target.app.ordinal()] = 1;
            iArr2[MessageEntitiesItemsInnerUrl.Target.browser.ordinal()] = 2;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    private final List<HttpAttachmentEntity> getAttachmentEntities(com.im.freechat.data.openapigen.models.Message message) {
        List<HttpAttachmentEntity> listOf;
        List<HttpAttachmentEntity> listOf2;
        List<HttpAttachmentEntity> listOf3;
        List<HttpAttachmentEntity> listOf4;
        if (message.getPhoto() != null) {
            listOf4 = CollectionsKt__CollectionsJVMKt.listOf(toAttachmentEntity(message.getPhoto(), message.getId()));
            return listOf4;
        } else if (message.getVideo() != null) {
            listOf3 = CollectionsKt__CollectionsJVMKt.listOf(toAttachmentEntity(message.getVideo(), message.getId()));
            return listOf3;
        } else if (message.getDocument() != null) {
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(toAttachmentEntity(message.getDocument(), message.getId()));
            return listOf2;
        } else if (message.getMedia() != null) {
            return mediaToAttachments(message.getId(), message.getMedia());
        } else {
            if (message.getAnimation() != null) {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(toAttachmentEntity(message.getAnimation(), message.getId()));
                return listOf;
            }
            return null;
        }
    }

    public static /* synthetic */ Message map$default(MessageMapper messageMapper, FullMessageEntity fullMessageEntity, UserEntityMapper userEntityMapper, Message message, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            message = null;
        }
        return messageMapper.map(fullMessageEntity, userEntityMapper, message);
    }

    private final MessageStyle.StyleUrlTarget mapTarget(MessageEntitiesItemsInnerUrl.Target target) {
        int i4 = WhenMappings.$EnumSwitchMapping$1[target.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                return MessageStyle.StyleUrlTarget.BROWSER;
            }
            throw new NoWhenBranchMatchedException();
        }
        return MessageStyle.StyleUrlTarget.APP;
    }

    private final HttpAttachmentEntity toAttachmentEntity(Photo photo, long j4) {
        long mediaId = getMediaId(photo.getUrl(), j4);
        Message.MediaType mediaType = Message.MediaType.IMAGE;
        String url = photo.getUrl();
        int width = photo.getWidth();
        int height = photo.getHeight();
        String preview = photo.getPreview();
        String fileName = photo.getFileName();
        return new HttpAttachmentEntity(mediaId, j4, mediaType, url, Integer.valueOf(width), Integer.valueOf(height), preview, photo.getFileSize(), null, null, null, fileName, photo.getMimeType(), null, 9984, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00a8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x000e A[SYNTHETIC] */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.im.freechat.data.openapigen.models.MediaGroup attachmentsToMediaGroup(@m8.g java.util.List<com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity> r15) {
        /*
            r14 = this;
            java.lang.String r0 = "attachments"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r15 = r15.iterator()
        Le:
            boolean r1 = r15.hasNext()
            if (r1 == 0) goto Lad
            java.lang.Object r1 = r15.next()
            com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity r1 = (com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity) r1
            com.im.freechat.shared.entities.message.Message$MediaType r2 = r1.getType()
            int[] r3 = com.im.freechat.data.sources.database.entities.message.MessageMapper.WhenMappings.$EnumSwitchMapping$0
            int r2 = r2.ordinal()
            r2 = r3[r2]
            r3 = 1
            r4 = 0
            if (r2 == r3) goto L6c
            r5 = 4
            if (r2 == r5) goto L2f
            goto La6
        L2f:
            com.im.freechat.data.openapigen.models.MediaGroupItemsInner r2 = new com.im.freechat.data.openapigen.models.MediaGroupItemsInner
            java.lang.String r6 = r1.getRemoteUrl()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            java.lang.Integer r5 = r1.getWidth()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            int r7 = r5.intValue()
            java.lang.Integer r5 = r1.getHeight()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            int r8 = r5.intValue()
            java.lang.String r9 = r1.getPreviewRemoteUrl()
            java.lang.Long r12 = r1.getFileSize()
            java.lang.String r11 = r1.getFileName()
            java.lang.String r13 = r1.getMimeType()
            java.lang.Integer r10 = r1.getDuration()
            com.im.freechat.data.openapigen.models.Video r1 = new com.im.freechat.data.openapigen.models.Video
            r5 = r1
            r5.<init>(r6, r7, r8, r9, r10, r11, r12, r13)
            r2.<init>(r4, r1, r3, r4)
            goto La5
        L6c:
            com.im.freechat.data.openapigen.models.MediaGroupItemsInner r2 = new com.im.freechat.data.openapigen.models.MediaGroupItemsInner
            java.lang.String r6 = r1.getRemoteUrl()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            java.lang.Integer r3 = r1.getWidth()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            int r7 = r3.intValue()
            java.lang.Integer r3 = r1.getHeight()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            int r8 = r3.intValue()
            java.lang.String r9 = r1.getPreviewRemoteUrl()
            java.lang.Long r12 = r1.getFileSize()
            java.lang.String r11 = r1.getFileName()
            java.lang.String r10 = r1.getMimeType()
            com.im.freechat.data.openapigen.models.Photo r1 = new com.im.freechat.data.openapigen.models.Photo
            r5 = r1
            r5.<init>(r6, r7, r8, r9, r10, r11, r12)
            r3 = 2
            r2.<init>(r1, r4, r3, r4)
        La5:
            r4 = r2
        La6:
            if (r4 == 0) goto Le
            r0.add(r4)
            goto Le
        Lad:
            com.im.freechat.data.openapigen.models.MediaGroup r15 = new com.im.freechat.data.openapigen.models.MediaGroup
            r15.<init>(r0)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.message.MessageMapper.attachmentsToMediaGroup(java.util.List):com.im.freechat.data.openapigen.models.MediaGroup");
    }

    public final long getMediaId(@g String remoteUrl, long j4) {
        Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
        return new MediaIdGenerator(remoteUrl, j4).hashCode();
    }

    @h
    public final Message map(@h FullMessageEntity fullMessageEntity, @g UserEntityMapper contactMapper, @h Message message) {
        Intrinsics.checkNotNullParameter(contactMapper, "contactMapper");
        if (fullMessageEntity == null) {
            return null;
        }
        List<AttachmentEntity> attachments = fullMessageEntity.getAttachments();
        ArrayList arrayList = new ArrayList();
        for (AttachmentEntity attachmentEntity : attachments) {
            Attachment mapAttachment = mapAttachment(attachmentEntity);
            if (mapAttachment != null) {
                arrayList.add(mapAttachment);
            }
        }
        long messageId = fullMessageEntity.getMessageEntity().getMessageId();
        Sender reverseMap = contactMapper.reverseMap(fullMessageEntity.getSenderEntity());
        if (reverseMap == null) {
            return null;
        }
        long sendTime = fullMessageEntity.getMessageEntity().getSendTime();
        String content = fullMessageEntity.getMessageEntity().getContent();
        Message.MessageStatus messageStatus = fullMessageEntity.getMessageEntity().getMessageStatus();
        int chatId = fullMessageEntity.getMessageEntity().getChatId();
        Sender reverseMap2 = contactMapper.reverseMap(fullMessageEntity.getForwardSenderEntity());
        return new Message(messageId, chatId, reverseMap, content, sendTime, messageStatus, message, fullMessageEntity.getMessageEntity().getForwardMessageId(), reverseMap2, fullMessageEntity.getMessageEntity().getForwardChatId(), fullMessageEntity.getMessageEntity().getEditTime(), arrayList, fullMessageEntity.getMessageEntity().getMentions(), fullMessageEntity.getMessageEntity().getMentionAll(), fullMessageEntity.getMessageEntity().getStyles(), fullMessageEntity.getMessageEntity().isService());
    }

    @h
    public final Attachment mapAttachment(@h AttachmentEntity attachmentEntity) {
        if (attachmentEntity == null) {
            return null;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[attachmentEntity.getType().ordinal()]) {
            case 1:
                String remoteUrl = attachmentEntity.getRemoteUrl();
                Integer width = attachmentEntity.getWidth();
                int intValue = width != null ? width.intValue() : 0;
                Integer height = attachmentEntity.getHeight();
                int intValue2 = height != null ? height.intValue() : 0;
                String localPath = attachmentEntity.getLocalPath();
                return new ImageAttachment(attachmentEntity.getMediaId(), attachmentEntity.getMessageId(), localPath, remoteUrl, attachmentEntity.getFileName(), attachmentEntity.getMimeType(), attachmentEntity.getPreviewRemoteUrl(), attachmentEntity.getPreviewLocalPath(), intValue, intValue2);
            case 2:
                String remoteUrl2 = attachmentEntity.getRemoteUrl();
                Integer width2 = attachmentEntity.getWidth();
                int intValue3 = width2 != null ? width2.intValue() : 0;
                Integer height2 = attachmentEntity.getHeight();
                int intValue4 = height2 != null ? height2.intValue() : 0;
                String gifId = attachmentEntity.getGifId();
                if (gifId == null) {
                    gifId = "";
                }
                return new GifAttachment(attachmentEntity.getMediaId(), attachmentEntity.getMessageId(), attachmentEntity.getLocalPath(), remoteUrl2, attachmentEntity.getFileName(), gifId, intValue3, intValue4);
            case 3:
                String remoteUrl3 = attachmentEntity.getRemoteUrl();
                Integer duration = attachmentEntity.getDuration();
                return new AudioAttachment(attachmentEntity.getMediaId(), attachmentEntity.getMessageId(), attachmentEntity.getLocalPath(), remoteUrl3, attachmentEntity.getFileName(), duration != null ? duration.intValue() : 0);
            case 4:
                String remoteUrl4 = attachmentEntity.getRemoteUrl();
                Integer width3 = attachmentEntity.getWidth();
                Integer height3 = attachmentEntity.getHeight();
                Integer duration2 = attachmentEntity.getDuration();
                int intValue5 = duration2 != null ? duration2.intValue() : 0;
                String localPath2 = attachmentEntity.getLocalPath();
                long mediaId = attachmentEntity.getMediaId();
                String previewRemoteUrl = attachmentEntity.getPreviewRemoteUrl();
                String previewLocalPath = attachmentEntity.getPreviewLocalPath();
                Long fileSize = attachmentEntity.getFileSize();
                return new VideoAttachment(mediaId, attachmentEntity.getMessageId(), localPath2, remoteUrl4, attachmentEntity.getFileName(), attachmentEntity.getMimeType(), width3, height3, previewRemoteUrl, previewLocalPath, fileSize != null ? fileSize.longValue() : 0L, intValue5);
            case 5:
                throw new NotImplementedError(null, 1, null);
            case 6:
                String remoteUrl5 = attachmentEntity.getRemoteUrl();
                String localPath3 = attachmentEntity.getLocalPath();
                long mediaId2 = attachmentEntity.getMediaId();
                String fileName = attachmentEntity.getFileName();
                Long fileSize2 = attachmentEntity.getFileSize();
                return new FileAttachment(mediaId2, attachmentEntity.getMessageId(), localPath3, remoteUrl5, fileName, attachmentEntity.getMimeType(), fileSize2 != null ? fileSize2.longValue() : 0L);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @g
    public final MessageEntity mapToEntity(@g Message message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return new MessageEntity(message.getMessageId(), message.getSender().getUserId(), message.getContent(), message.getChatId(), message.getSendTime(), message.getMessageStatus(), null, null, null, null, null, message.getMentionAll(), message.getMentions(), message.getMessageStyles(), false, 18368, null);
    }

    @g
    public final Pair<MessageEntity, List<HttpAttachmentEntity>> mapToEntityAndAttachment(@h com.im.freechat.data.openapigen.models.Message message, @h Long l10) {
        List<MessageEntitiesItemsInner> items;
        ArrayList arrayList = null;
        if (message == null) {
            return new Pair<>(null, null);
        }
        long id = message.getId();
        int senderId = message.getSenderId();
        int chatId = message.getChatId();
        long millis = TimeUnit.SECONDS.toMillis(message.getSentAt());
        Message.MessageStatus messageStatus = (message.getId() <= (l10 != null ? l10.longValue() : 0L) || message.getServiceText() != null) ? Message.MessageStatus.HAVE_READ : Message.MessageStatus.SEND_COMPLETED;
        String text = message.getText();
        if (text == null && (text = message.getCaption()) == null) {
            text = message.getServiceText();
        }
        String str = text;
        User forwardSender = message.getForwardSender();
        Integer valueOf = forwardSender != null ? Integer.valueOf(forwardSender.getId()) : null;
        Long forwardMessageId = message.getForwardMessageId();
        Integer forwardChatId = message.getForwardChatId();
        Long replyToMessageId = message.getReplyToMessageId();
        Long editedAt = message.getEditedAt();
        MessageEntities messageEntities = message.getMessageEntities();
        if (messageEntities != null && (items = messageEntities.getItems()) != null) {
            arrayList = new ArrayList();
            Iterator it = items.iterator();
            while (it.hasNext()) {
                Iterator it2 = it;
                MessageStyle map = map((MessageEntitiesItemsInner) it.next());
                if (map != null) {
                    arrayList.add(map);
                }
                it = it2;
            }
        }
        return new Pair<>(new MessageEntity(id, senderId, str, chatId, millis, messageStatus, editedAt, valueOf, forwardMessageId, forwardChatId, replyToMessageId, false, null, arrayList, message.getServiceText() != null), getAttachmentEntities(message));
    }

    @g
    public final List<HttpAttachmentEntity> mediaToAttachments(long j4, @g MediaGroup media) {
        HttpAttachmentEntity attachmentEntity;
        Intrinsics.checkNotNullParameter(media, "media");
        List<MediaGroupItemsInner> items = media.getItems();
        ArrayList arrayList = new ArrayList();
        for (MediaGroupItemsInner mediaGroupItemsInner : items) {
            if (mediaGroupItemsInner.getPhoto() != null) {
                attachmentEntity = toAttachmentEntity(mediaGroupItemsInner.getPhoto(), j4);
            } else {
                attachmentEntity = mediaGroupItemsInner.getVideo() != null ? toAttachmentEntity(mediaGroupItemsInner.getVideo(), j4) : null;
            }
            if (attachmentEntity != null) {
                arrayList.add(attachmentEntity);
            }
        }
        return arrayList;
    }

    private final HttpAttachmentEntity toAttachmentEntity(Video video, long j4) {
        long mediaId = getMediaId(video.getUrl(), j4);
        Message.MediaType mediaType = Message.MediaType.VIDEO;
        String url = video.getUrl();
        int width = video.getWidth();
        int height = video.getHeight();
        Integer duration = video.getDuration();
        String preview = video.getPreview();
        String fileName = video.getFileName();
        return new HttpAttachmentEntity(mediaId, j4, mediaType, url, Integer.valueOf(width), Integer.valueOf(height), preview, video.getFileSize(), duration, null, null, fileName, video.getMimeType(), null, 9728, null);
    }

    @g
    public final AttachmentEntity map(@g Attachment attachment) {
        Intrinsics.checkNotNullParameter(attachment, "attachment");
        if (attachment instanceof VideoAttachment) {
            Message.MediaType mediaType = Message.MediaType.VIDEO;
            String remoteUrl = attachment.getRemoteUrl();
            String localPath = attachment.getLocalPath();
            VideoAttachment videoAttachment = (VideoAttachment) attachment;
            Integer width = videoAttachment.getWidth();
            Integer height = videoAttachment.getHeight();
            long mediaId = attachment.getMediaId();
            long messageId = attachment.getMessageId();
            int duration = videoAttachment.getDuration();
            String previewRemoteUrl = videoAttachment.getPreviewRemoteUrl();
            long fileSize = videoAttachment.getFileSize();
            String fileName = attachment.getFileName();
            return new AttachmentEntity(mediaId, messageId, mediaType, localPath, remoteUrl, width, height, videoAttachment.getPreviewLocalPath(), previewRemoteUrl, Long.valueOf(fileSize), Integer.valueOf(duration), null, null, fileName, videoAttachment.getMimeType(), null);
        } else if (attachment instanceof AudioAttachment) {
            Message.MediaType mediaType2 = Message.MediaType.AUDIO;
            String remoteUrl2 = attachment.getRemoteUrl();
            String localPath2 = attachment.getLocalPath();
            long mediaId2 = attachment.getMediaId();
            long messageId2 = attachment.getMessageId();
            int duration2 = ((AudioAttachment) attachment).getDuration();
            return new AttachmentEntity(mediaId2, messageId2, mediaType2, localPath2, remoteUrl2, null, null, null, null, null, Integer.valueOf(duration2), null, null, attachment.getFileName(), null, null);
        } else if (attachment instanceof FileAttachment) {
            Message.MediaType mediaType3 = Message.MediaType.FILE;
            String remoteUrl3 = attachment.getRemoteUrl();
            String localPath3 = attachment.getLocalPath();
            long mediaId3 = attachment.getMediaId();
            long messageId3 = attachment.getMessageId();
            FileAttachment fileAttachment = (FileAttachment) attachment;
            long fileSize2 = fileAttachment.getFileSize();
            return new AttachmentEntity(mediaId3, messageId3, mediaType3, localPath3, remoteUrl3, null, null, null, null, Long.valueOf(fileSize2), null, null, null, attachment.getFileName(), fileAttachment.getMimeType(), null);
        } else if (attachment instanceof ImageAttachment) {
            Message.MediaType mediaType4 = Message.MediaType.IMAGE;
            String remoteUrl4 = attachment.getRemoteUrl();
            String localPath4 = attachment.getLocalPath();
            ImageAttachment imageAttachment = (ImageAttachment) attachment;
            int width2 = imageAttachment.getWidth();
            int height2 = imageAttachment.getHeight();
            long mediaId4 = attachment.getMediaId();
            long messageId4 = attachment.getMessageId();
            String fileName2 = attachment.getFileName();
            return new AttachmentEntity(mediaId4, messageId4, mediaType4, localPath4, remoteUrl4, Integer.valueOf(width2), Integer.valueOf(height2), imageAttachment.getPreviewLocalPath(), null, null, null, null, null, fileName2, imageAttachment.getMimeType(), null);
        } else if (attachment instanceof GifAttachment) {
            Message.MediaType mediaType5 = Message.MediaType.GIF;
            String remoteUrl5 = attachment.getRemoteUrl();
            String localPath5 = attachment.getLocalPath();
            GifAttachment gifAttachment = (GifAttachment) attachment;
            int width3 = gifAttachment.getWidth();
            int height3 = gifAttachment.getHeight();
            String gifId = gifAttachment.getGifId();
            return new AttachmentEntity(attachment.getMediaId(), attachment.getMessageId(), mediaType5, localPath5, remoteUrl5, Integer.valueOf(width3), Integer.valueOf(height3), null, null, null, null, null, null, attachment.getFileName(), null, gifId);
        } else if (attachment instanceof LocationAttachment) {
            throw new NotImplementedError(null, 1, null);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    private final HttpAttachmentEntity toAttachmentEntity(Document document, long j4) {
        return new HttpAttachmentEntity(getMediaId(document.getUrl(), j4), j4, Message.MediaType.FILE, document.getUrl(), null, null, null, document.getFileSize(), null, null, null, document.getFileName(), document.getMimeType(), null, 10096, null);
    }

    private final HttpAttachmentEntity toAttachmentEntity(Animation animation, long j4) {
        long mediaId = getMediaId(animation.getUrl(), j4);
        Message.MediaType mediaType = Message.MediaType.GIF;
        String url = animation.getUrl();
        int width = animation.getWidth();
        int height = animation.getHeight();
        String fileName = animation.getFileName();
        return new HttpAttachmentEntity(mediaId, j4, mediaType, url, Integer.valueOf(width), Integer.valueOf(height), null, animation.getFileSize(), null, null, null, fileName, null, animation.getGiphyId(), 1856, null);
    }

    private final MessageStyle map(MessageEntitiesItemsInner messageEntitiesItemsInner) {
        if (messageEntitiesItemsInner == null) {
            return null;
        }
        if (messageEntitiesItemsInner.getBold() != null) {
            MessageEntitiesItemsInnerBold bold = messageEntitiesItemsInner.getBold();
            if (bold.getOffset() == null || bold.getLength() == null) {
                return null;
            }
            return new MessageStyle(bold.getOffset().intValue(), bold.getLength().intValue(), MessageStyle.StyleType.BOLD, null, null, 24, null);
        } else if (messageEntitiesItemsInner.getUrl() != null) {
            MessageEntitiesItemsInnerUrl url = messageEntitiesItemsInner.getUrl();
            if (url.getOffset() == null || url.getLength() == null || url.getUrl() == null || url.getTarget() == null) {
                return null;
            }
            return new MessageStyle(url.getOffset().intValue(), url.getLength().intValue(), MessageStyle.StyleType.URL, url.getUrl(), mapTarget(url.getTarget()));
        } else {
            return null;
        }
    }

    @g
    public final List<Message> map(@g List<FullMessageEntity> entities, @g UserEntityMapper contactMapper, @g Map<Long, Message> repliedMessages) {
        Intrinsics.checkNotNullParameter(entities, "entities");
        Intrinsics.checkNotNullParameter(contactMapper, "contactMapper");
        Intrinsics.checkNotNullParameter(repliedMessages, "repliedMessages");
        ArrayList arrayList = new ArrayList();
        for (FullMessageEntity fullMessageEntity : entities) {
            Long replyToMessageId = fullMessageEntity.getMessageEntity().getReplyToMessageId();
            Message map = map(fullMessageEntity, contactMapper, replyToMessageId != null ? repliedMessages.get(Long.valueOf(replyToMessageId.longValue())) : null);
            if (map != null) {
                arrayList.add(map);
            }
        }
        return arrayList;
    }
}
