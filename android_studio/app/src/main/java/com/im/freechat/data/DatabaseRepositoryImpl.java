package com.im.freechat.data;

import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.data.sources.database.MainDatabase;
import com.im.freechat.data.sources.database.entities.attachment.AttachmentDao;
import com.im.freechat.data.sources.database.entities.chat.ChatDao;
import com.im.freechat.data.sources.database.entities.chat.ChatMapper;
import com.im.freechat.data.sources.database.entities.chat.ChatWithContacts;
import com.im.freechat.data.sources.database.entities.contact.UserDao;
import com.im.freechat.data.sources.database.entities.contact.UserEntity;
import com.im.freechat.data.sources.database.entities.contact.UserEntityMapper;
import com.im.freechat.data.sources.database.entities.download.DownloadDao;
import com.im.freechat.data.sources.database.entities.download.DownloadEntity;
import com.im.freechat.data.sources.database.entities.download.DownloadEntityMapper;
import com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao;
import com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusMapper;
import com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus;
import com.im.freechat.data.sources.database.entities.member.ChatMemberEntity;
import com.im.freechat.data.sources.database.entities.member.MemberDao;
import com.im.freechat.data.sources.database.entities.member.MemberEntity;
import com.im.freechat.data.sources.database.entities.message.FullMessageEntity;
import com.im.freechat.data.sources.database.entities.message.MessageDao;
import com.im.freechat.data.sources.database.entities.message.MessageMapper;
import com.im.freechat.shared.entities.DownloadInfo;
import com.im.freechat.shared.entities.auth.UserInfo;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.shared.entities.chat.FriendStatus;
import com.im.freechat.shared.entities.chat.Status;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.shared.entities.message.MessageWithChat;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: DatabaseRepositoryImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010Y\u001a\u00020W\u0012\u0006\u0010\\\u001a\u00020Z\u0012\u0006\u0010_\u001a\u00020]\u0012\u0006\u0010b\u001a\u00020`\u0012\u0006\u0010e\u001a\u00020c\u0012\u0006\u0010h\u001a\u00020f¢\u0006\u0004\b~\u0010\u007fJ\u0013\u0010\u0003\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\u0013\u0010\u0006\u001a\u00020\u0005H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0004J\u0014\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007H\u0016J\u0014\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007H\u0016J!\u0010\r\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\tH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u000eJ\u001b\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u0018J\u001b\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0018J\u001b\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010\u001f\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u000eJ\u001d\u0010 \u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\b \u0010\u0018J'\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00050\b2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00150\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b\"\u0010\u000eJ\u001b\u0010#\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\b#\u0010\u0018J\u001b\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\b%\u0010\u0018J!\u0010&\u001a\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b&\u0010\u000eJ\u0014\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\b0\u0007H\u0016J\u0014\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\b0\u0007H\u0016J#\u0010,\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\u00152\u0006\u0010+\u001a\u00020*H\u0096@ø\u0001\u0000¢\u0006\u0004\b,\u0010-J#\u0010/\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\u00152\u0006\u0010.\u001a\u00020*H\u0096@ø\u0001\u0000¢\u0006\u0004\b/\u0010-J\u0014\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\b0\u0007H\u0016J\u001c\u00104\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002030\b0\u00072\u0006\u00102\u001a\u00020\u0015H\u0016J\u0019\u00105\u001a\b\u0012\u0004\u0012\u0002000\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b5\u0010\u0004J\u0019\u00106\u001a\b\u0012\u0004\u0012\u00020\u00150\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b6\u0010\u0004J\u0019\u00107\u001a\b\u0012\u0004\u0012\u00020\u00150\u0007H\u0096@ø\u0001\u0000¢\u0006\u0004\b7\u0010\u0004J\u001d\u00108\u001a\u0004\u0018\u0001002\u0006\u00102\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\b8\u0010\u0018J\u0018\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001000\u00072\u0006\u00102\u001a\u00020\u0015H\u0016J\u0018\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00072\u0006\u0010)\u001a\u00020\u0015H\u0016J%\u0010<\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u00152\b\u0010;\u001a\u0004\u0018\u00010*H\u0096@ø\u0001\u0000¢\u0006\u0004\b<\u0010-J\u0018\u0010=\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00072\u0006\u0010)\u001a\u00020\u0015H\u0016J\u001c\u0010>\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002000\b0\u00072\u0006\u0010)\u001a\u00020\u0015H\u0016J\u0015\u0010?\u001a\u0004\u0018\u00010\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\b?\u0010\u0004J!\u0010A\u001a\u00020\u00022\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00150\bH\u0096@ø\u0001\u0000¢\u0006\u0004\bA\u0010\u000eJ'\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00150\b2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00150\bH\u0096@ø\u0001\u0000¢\u0006\u0004\bC\u0010\u000eJ#\u0010D\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\bD\u0010EJ/\u0010H\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020G0\b0\u00072\u0006\u00102\u001a\u00020\u00152\u0006\u0010F\u001a\u00020\u0012H\u0096@ø\u0001\u0000¢\u0006\u0004\bH\u0010IJ!\u0010K\u001a\b\u0012\u0004\u0012\u00020G0\b2\u0006\u0010J\u001a\u00020*H\u0096@ø\u0001\u0000¢\u0006\u0004\bK\u0010LJ#\u0010N\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010G0\u00072\u0006\u0010M\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0004\bN\u0010\u0018J'\u0010O\u001a\b\u0012\u0004\u0012\u00020G0\b2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00120\bH\u0096@ø\u0001\u0000¢\u0006\u0004\bO\u0010\u000eJ\u0013\u0010P\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\bP\u0010\u0004J\u0019\u0010R\u001a\b\u0012\u0004\u0012\u00020Q0\u0007H\u0096@ø\u0001\u0000¢\u0006\u0004\bR\u0010\u0004J\u0014\u0010T\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020S0\b0\u0007H\u0016J\u0014\u0010U\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020S0\b0\u0007H\u0016J\u0018\u0010V\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010S0\u00072\u0006\u0010$\u001a\u00020\u0015H\u0016R\u0014\u0010Y\u001a\u00020W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010XR\u0014\u0010\\\u001a\u00020Z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010[R\u0014\u0010_\u001a\u00020]8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010^R\u0014\u0010b\u001a\u00020`8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010aR\u0014\u0010e\u001a\u00020c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010dR\u0014\u0010h\u001a\u00020f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010gR\u0014\u0010k\u001a\u00020i8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010jR\u0014\u0010n\u001a\u00020l8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u0010mR\u0014\u0010q\u001a\u00020o8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010pR\u0014\u0010t\u001a\u00020r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010sR\u0014\u0010w\u001a\u00020u8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010vR\u0014\u0010z\u001a\u00020x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010yR\u0014\u0010}\u001a\u00020{8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010|\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0080\u0001"}, d2 = {"Lcom/im/freechat/data/DatabaseRepositoryImpl;", "Lcom/im/freechat/domain/c;", "", "a", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "j", "Lkotlinx/coroutines/flow/i;", "", "Lcom/im/freechat/shared/entities/DownloadInfo;", "r", "L", "list", "N", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "item", "u", "(Lcom/im/freechat/shared/entities/DownloadInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "mediaIds", "J", "", com.im.freechat.ui.chat.userprofile.j.f43244a, "c", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "v", "n", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "info", "D", "(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "q", "o", "contactIds", "B", "z", "targetUserId", "g", ContextChain.TAG_INFRA, "w", "I", "userId", "", "userMask", "M", "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "userName", "k", "Lcom/im/freechat/shared/entities/chat/Chat;", "t", k4.b.f84734a, "Lcom/im/freechat/shared/entities/chat/ChatMember;", "O", "h", "F", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "P", "f", "draftMessage", "C", "d", y.b.f83919g, "m", "presentIds", ExifInterface.LONGITUDE_EAST, "users", "l", "K", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "laterThan", "Lcom/im/freechat/shared/entities/message/Message;", y.b.f83920h, "(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", s2.d.f93273b, "Q", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "id", "p", "R", "b", "Lcom/im/freechat/shared/entities/message/MessageWithChat;", "s", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "H", "e", "G", "Lcom/im/freechat/data/sources/database/MainDatabase;", "Lcom/im/freechat/data/sources/database/MainDatabase;", "mainDatabase", "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;", "Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;", "downloadEntityMapper", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;", "contactEntityMapper", "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;", "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;", "chatMapper", "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;", "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;", "messageMapper", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;", "chatRequestMapper", "Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;", "Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;", "downloadDao", "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;", "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;", "userDao", "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;", "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;", "chatDao", "Lcom/im/freechat/data/sources/database/entities/member/MemberDao;", "Lcom/im/freechat/data/sources/database/entities/member/MemberDao;", "memberDao", "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;", "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;", "messageDao", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;", "attachmentDao", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;", "friendStatusDao", "<init>", "(Lcom/im/freechat/data/sources/database/MainDatabase;Lcom/im/freechat/data/sources/database/entities/download/DownloadEntityMapper;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;)V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class DatabaseRepositoryImpl implements com.im.freechat.domain.c {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final MainDatabase f39477a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final DownloadEntityMapper f39478b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final UserEntityMapper f39479c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final ChatMapper f39480d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final MessageMapper f39481e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final FriendStatusMapper f39482f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final DownloadDao f39483g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final UserDao f39484h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final ChatDao f39485i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final MemberDao f39486j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final MessageDao f39487k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final AttachmentDao f39488l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final FriendStatusDao f39489m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl", f = "DatabaseRepositoryImpl.kt", i = {}, l = {com.facebook.imageutils.c.f13388c}, m = "checkContactsExist", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f39623a;

        /* renamed from: c  reason: collision with root package name */
        int f39625c;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39623a = obj;
            this.f39625c |= Integer.MIN_VALUE;
            return DatabaseRepositoryImpl.this.l(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl", f = "DatabaseRepositoryImpl.kt", i = {0}, l = {174}, m = "getChatById", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39626a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f39627b;

        /* renamed from: d  reason: collision with root package name */
        int f39629d;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39627b = obj;
            this.f39629d |= Integer.MIN_VALUE;
            return DatabaseRepositoryImpl.this.A(0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl", f = "DatabaseRepositoryImpl.kt", i = {0}, l = {158}, m = "getChats", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39630a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f39631b;

        /* renamed from: d  reason: collision with root package name */
        int f39633d;

        c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39631b = obj;
            this.f39633d |= Integer.MIN_VALUE;
            return DatabaseRepositoryImpl.this.h(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl", f = "DatabaseRepositoryImpl.kt", i = {0}, l = {103}, m = "getContact", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class d extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39634a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f39635b;

        /* renamed from: d  reason: collision with root package name */
        int f39637d;

        d(Continuation<? super d> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39635b = obj;
            this.f39637d |= Integer.MIN_VALUE;
            return DatabaseRepositoryImpl.this.o(0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl", f = "DatabaseRepositoryImpl.kt", i = {0}, l = {107}, m = "getContacts", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class e extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39638a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f39639b;

        /* renamed from: d  reason: collision with root package name */
        int f39641d;

        e(Continuation<? super e> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39639b = obj;
            this.f39641d |= Integer.MIN_VALUE;
            return DatabaseRepositoryImpl.this.B(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl", f = "DatabaseRepositoryImpl.kt", i = {0}, l = {44}, m = "getCurrentUser", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class f extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39642a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f39643b;

        /* renamed from: d  reason: collision with root package name */
        int f39645d;

        f(Continuation<? super f> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39643b = obj;
            this.f39645d |= Integer.MIN_VALUE;
            return DatabaseRepositoryImpl.this.j(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl", f = "DatabaseRepositoryImpl.kt", i = {0}, l = {262}, m = "getMessagesToForward", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class g extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39646a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f39647b;

        /* renamed from: d  reason: collision with root package name */
        int f39649d;

        g(Continuation<? super g> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39647b = obj;
            this.f39649d |= Integer.MIN_VALUE;
            return DatabaseRepositoryImpl.this.R(null, this);
        }
    }

    /* compiled from: DatabaseRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u00002\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"", "i1", "i2", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$listenTotalUnreadCount$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    static final class h extends SuspendLambda implements Function3<Integer, Integer, Continuation<? super Integer>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f39650a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f39651b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f39652c;

        h(Continuation<? super h> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.h Integer num, @m8.h Integer num2, @m8.h Continuation<? super Integer> continuation) {
            h hVar = new h(continuation);
            hVar.f39651b = num;
            hVar.f39652c = num2;
            return hVar.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f39650a == 0) {
                ResultKt.throwOnFailure(obj);
                Integer num = (Integer) this.f39651b;
                Integer num2 = (Integer) this.f39652c;
                return Boxing.boxInt((num != null ? num.intValue() : 0) + (num2 != null ? num2.intValue() : 0));
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl", f = "DatabaseRepositoryImpl.kt", i = {0, 0, 1}, l = {77, 78}, m = "removeDownloads", n = {"this", "mediaIds", "info"}, s = {"L$0", "L$1", "L$0"})
    /* loaded from: classes2.dex */
    public static final class i extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39653a;

        /* renamed from: b  reason: collision with root package name */
        Object f39654b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f39655c;

        /* renamed from: e  reason: collision with root package name */
        int f39657e;

        i(Continuation<? super i> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39655c = obj;
            this.f39657e |= Integer.MIN_VALUE;
            return DatabaseRepositoryImpl.this.J(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl", f = "DatabaseRepositoryImpl.kt", i = {0, 0}, l = {68, 69}, m = "saveDownloads", n = {"this", "list"}, s = {"L$0", "L$1"})
    /* loaded from: classes2.dex */
    public static final class j extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39658a;

        /* renamed from: b  reason: collision with root package name */
        Object f39659b;

        /* renamed from: c  reason: collision with root package name */
        Object f39660c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f39661d;

        /* renamed from: f  reason: collision with root package name */
        int f39663f;

        j(Continuation<? super j> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39661d = obj;
            this.f39663f |= Integer.MIN_VALUE;
            return DatabaseRepositoryImpl.this.N(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DatabaseRepositoryImpl.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl", f = "DatabaseRepositoryImpl.kt", i = {0}, l = {ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION}, m = "searchMessages", n = {"this"}, s = {"L$0"})
    /* loaded from: classes2.dex */
    public static final class k extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f39664a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f39665b;

        /* renamed from: d  reason: collision with root package name */
        int f39667d;

        k(Continuation<? super k> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f39665b = obj;
            this.f39667d |= Integer.MIN_VALUE;
            return DatabaseRepositoryImpl.this.Q(null, this);
        }
    }

    /* compiled from: DatabaseRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;", "old", "new", "", "a", "(Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes2.dex */
    static final class l extends Lambda implements Function2<FullMessageEntity, FullMessageEntity, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final l f39668a = new l();

        l() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final Boolean invoke(@m8.g FullMessageEntity old, @m8.g FullMessageEntity fullMessageEntity) {
            Intrinsics.checkNotNullParameter(old, "old");
            Intrinsics.checkNotNullParameter(fullMessageEntity, "new");
            return Boolean.valueOf(old.getMessageEntity().getMessageId() == fullMessageEntity.getMessageEntity().getMessageId());
        }
    }

    public DatabaseRepositoryImpl(@m8.g MainDatabase mainDatabase, @m8.g DownloadEntityMapper downloadEntityMapper, @m8.g UserEntityMapper contactEntityMapper, @m8.g ChatMapper chatMapper, @m8.g MessageMapper messageMapper, @m8.g FriendStatusMapper chatRequestMapper) {
        Intrinsics.checkNotNullParameter(mainDatabase, "mainDatabase");
        Intrinsics.checkNotNullParameter(downloadEntityMapper, "downloadEntityMapper");
        Intrinsics.checkNotNullParameter(contactEntityMapper, "contactEntityMapper");
        Intrinsics.checkNotNullParameter(chatMapper, "chatMapper");
        Intrinsics.checkNotNullParameter(messageMapper, "messageMapper");
        Intrinsics.checkNotNullParameter(chatRequestMapper, "chatRequestMapper");
        this.f39477a = mainDatabase;
        this.f39478b = downloadEntityMapper;
        this.f39479c = contactEntityMapper;
        this.f39480d = chatMapper;
        this.f39481e = messageMapper;
        this.f39482f = chatRequestMapper;
        this.f39483g = mainDatabase.downloadDao();
        this.f39484h = mainDatabase.userDao();
        this.f39485i = mainDatabase.chatDao();
        this.f39486j = mainDatabase.memberDao();
        this.f39487k = mainDatabase.messageDao();
        this.f39488l = mainDatabase.attachmentDao();
        this.f39489m = mainDatabase.friendStatusDao();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0055 A[ORIG_RETURN, RETURN] */
    @Override // com.im.freechat.domain.c
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object A(int r5, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.chat.Chat> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.data.DatabaseRepositoryImpl.b
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.data.DatabaseRepositoryImpl$b r0 = (com.im.freechat.data.DatabaseRepositoryImpl.b) r0
            int r1 = r0.f39629d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39629d = r1
            goto L18
        L13:
            com.im.freechat.data.DatabaseRepositoryImpl$b r0 = new com.im.freechat.data.DatabaseRepositoryImpl$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f39627b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39629d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f39626a
            com.im.freechat.data.DatabaseRepositoryImpl r5 = (com.im.freechat.data.DatabaseRepositoryImpl) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L46
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.data.sources.database.entities.chat.ChatDao r6 = r4.f39485i
            r0.f39626a = r4
            r0.f39629d = r3
            java.lang.Object r6 = r6.getChatById(r5, r0)
            if (r6 != r1) goto L45
            return r1
        L45:
            r5 = r4
        L46:
            com.im.freechat.data.sources.database.entities.chat.ChatWithContacts r6 = (com.im.freechat.data.sources.database.entities.chat.ChatWithContacts) r6
            if (r6 == 0) goto L55
            com.im.freechat.data.sources.database.entities.chat.ChatMapper r0 = r5.f39480d
            com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r1 = r5.f39479c
            com.im.freechat.data.sources.database.entities.message.MessageMapper r5 = r5.f39481e
            com.im.freechat.shared.entities.chat.Chat r5 = r0.map(r6, r1, r5)
            goto L56
        L55:
            r5 = 0
        L56:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl.A(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    @Override // com.im.freechat.domain.c
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object B(@m8.g java.util.List<java.lang.Integer> r5, @m8.g kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.shared.entities.contact.UserModel>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.data.DatabaseRepositoryImpl.e
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.data.DatabaseRepositoryImpl$e r0 = (com.im.freechat.data.DatabaseRepositoryImpl.e) r0
            int r1 = r0.f39641d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39641d = r1
            goto L18
        L13:
            com.im.freechat.data.DatabaseRepositoryImpl$e r0 = new com.im.freechat.data.DatabaseRepositoryImpl$e
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f39639b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39641d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f39638a
            com.im.freechat.data.DatabaseRepositoryImpl r5 = (com.im.freechat.data.DatabaseRepositoryImpl) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L46
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.data.sources.database.entities.contact.UserDao r6 = r4.f39484h
            r0.f39638a = r4
            r0.f39641d = r3
            java.lang.Object r6 = r6.getContacts(r5, r0)
            if (r6 != r1) goto L45
            return r1
        L45:
            r5 = r4
        L46:
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r6 = r6.iterator()
        L51:
            boolean r1 = r6.hasNext()
            if (r1 == 0) goto L69
            java.lang.Object r1 = r6.next()
            com.im.freechat.data.sources.database.entities.contact.UserEntity r1 = (com.im.freechat.data.sources.database.entities.contact.UserEntity) r1
            com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r2 = r5.f39479c
            com.im.freechat.shared.entities.contact.UserModel r1 = r2.reverseMap(r1)
            if (r1 == 0) goto L51
            r0.add(r1)
            goto L51
        L69:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl.B(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object C(int i4, @m8.h String str, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object updateDraftMessage = this.f39485i.updateDraftMessage(i4, str, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return updateDraftMessage == coroutine_suspended ? updateDraftMessage : Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object D(@m8.g UserInfo userInfo, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object insertOrUpdate = this.f39484h.insertOrUpdate(this.f39479c.map(userInfo.asContact()), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return insertOrUpdate == coroutine_suspended ? insertOrUpdate : Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object E(@m8.g List<Integer> list, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object deleteChatsNotInList = this.f39485i.deleteChatsNotInList(list, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return deleteChatsNotInList == coroutine_suspended ? deleteChatsNotInList : Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object F(@m8.g Continuation<? super List<Integer>> continuation) {
        return ChatDao.getNonPredefinedChatIds$default(this.f39485i, null, continuation, 1, null);
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<FriendStatus> G(int i4) {
        final kotlinx.coroutines.flow.i<UserRelationStatus> chatRequestByTargetId = this.f39489m.getChatRequestByTargetId(i4);
        return new kotlinx.coroutines.flow.i<FriendStatus>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$listenFriendRequestByTargetId$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenFriendRequestByTargetId$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<UserRelationStatus> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39524a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39525b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$listenFriendRequestByTargetId$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenFriendRequestByTargetId$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39526a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39527b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39528c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39526a = obj;
                        this.f39527b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39524a = jVar;
                    this.f39525b = databaseRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus r6, @m8.g kotlin.coroutines.Continuation r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.im.freechat.data.DatabaseRepositoryImpl$listenFriendRequestByTargetId$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        com.im.freechat.data.DatabaseRepositoryImpl$listenFriendRequestByTargetId$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$listenFriendRequestByTargetId$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39527b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39527b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$listenFriendRequestByTargetId$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$listenFriendRequestByTargetId$$inlined$map$1$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.f39526a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39527b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L51
                    L29:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L31:
                        kotlin.ResultKt.throwOnFailure(r7)
                        kotlinx.coroutines.flow.j r7 = r5.f39524a
                        com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus r6 = (com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus) r6
                        com.im.freechat.data.DatabaseRepositoryImpl r2 = r5.f39525b
                        com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusMapper r2 = com.im.freechat.data.DatabaseRepositoryImpl.U(r2)
                        com.im.freechat.data.DatabaseRepositoryImpl r4 = r5.f39525b
                        com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r4 = com.im.freechat.data.DatabaseRepositoryImpl.V(r4)
                        com.im.freechat.shared.entities.chat.FriendStatus r6 = r2.map(r6, r4)
                        r0.f39527b = r3
                        java.lang.Object r6 = r7.emit(r6, r0)
                        if (r6 != r1) goto L51
                        return r1
                    L51:
                        kotlin.Unit r6 = kotlin.Unit.INSTANCE
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$listenFriendRequestByTargetId$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super FriendStatus> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<List<FriendStatus>> H() {
        List<? extends Status> listOf;
        FriendStatusDao friendStatusDao = this.f39489m;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Status.REQUEST_SENT);
        final kotlinx.coroutines.flow.i<List<UserRelationStatus>> allWithStatus = friendStatusDao.getAllWithStatus(listOf);
        return new kotlinx.coroutines.flow.i<List<? extends FriendStatus>>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$listenSentFriendRequests$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenSentFriendRequests$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<List<? extends UserRelationStatus>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39548a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39549b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$listenSentFriendRequests$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenSentFriendRequests$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39550a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39551b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39552c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39550a = obj;
                        this.f39551b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39548a = jVar;
                    this.f39549b = databaseRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.util.List<? extends com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus> r8, @m8.g kotlin.coroutines.Continuation r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof com.im.freechat.data.DatabaseRepositoryImpl$listenSentFriendRequests$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        com.im.freechat.data.DatabaseRepositoryImpl$listenSentFriendRequests$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$listenSentFriendRequests$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39551b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39551b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$listenSentFriendRequests$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$listenSentFriendRequests$$inlined$map$1$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.f39550a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39551b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r9)
                        goto L6c
                    L29:
                        java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                        java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                        r8.<init>(r9)
                        throw r8
                    L31:
                        kotlin.ResultKt.throwOnFailure(r9)
                        kotlinx.coroutines.flow.j r9 = r7.f39548a
                        java.util.List r8 = (java.util.List) r8
                        java.util.ArrayList r2 = new java.util.ArrayList
                        r2.<init>()
                        java.util.Iterator r8 = r8.iterator()
                    L41:
                        boolean r4 = r8.hasNext()
                        if (r4 == 0) goto L63
                        java.lang.Object r4 = r8.next()
                        com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus r4 = (com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus) r4
                        com.im.freechat.data.DatabaseRepositoryImpl r5 = r7.f39549b
                        com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusMapper r5 = com.im.freechat.data.DatabaseRepositoryImpl.U(r5)
                        com.im.freechat.data.DatabaseRepositoryImpl r6 = r7.f39549b
                        com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r6 = com.im.freechat.data.DatabaseRepositoryImpl.V(r6)
                        com.im.freechat.shared.entities.chat.FriendStatus r4 = r5.map(r4, r6)
                        if (r4 == 0) goto L41
                        r2.add(r4)
                        goto L41
                    L63:
                        r0.f39551b = r3
                        java.lang.Object r8 = r9.emit(r2, r0)
                        if (r8 != r1) goto L6c
                        return r1
                    L6c:
                        kotlin.Unit r8 = kotlin.Unit.INSTANCE
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$listenSentFriendRequests$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super List<? extends FriendStatus>> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<List<UserModel>> I() {
        List<? extends Status> listOf;
        FriendStatusDao friendStatusDao = this.f39489m;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Status.FRIEND);
        final kotlinx.coroutines.flow.i<List<UserRelationStatus>> allWithStatus = friendStatusDao.getAllWithStatus(listOf);
        return new kotlinx.coroutines.flow.i<List<? extends UserModel>>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$listenFriends$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenFriends$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<List<? extends UserRelationStatus>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39532a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39533b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$listenFriends$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenFriends$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39534a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39535b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39536c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39534a = obj;
                        this.f39535b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39532a = jVar;
                    this.f39533b = databaseRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.util.List<? extends com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus> r7, @m8.g kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.im.freechat.data.DatabaseRepositoryImpl$listenFriends$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        com.im.freechat.data.DatabaseRepositoryImpl$listenFriends$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$listenFriends$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39535b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39535b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$listenFriends$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$listenFriends$$inlined$map$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.f39534a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39535b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L6a
                    L29:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L31:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlinx.coroutines.flow.j r8 = r6.f39532a
                        java.util.List r7 = (java.util.List) r7
                        java.util.ArrayList r2 = new java.util.ArrayList
                        r2.<init>()
                        java.util.Iterator r7 = r7.iterator()
                    L41:
                        boolean r4 = r7.hasNext()
                        if (r4 == 0) goto L61
                        java.lang.Object r4 = r7.next()
                        com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus r4 = (com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus) r4
                        com.im.freechat.data.DatabaseRepositoryImpl r5 = r6.f39533b
                        com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r5 = com.im.freechat.data.DatabaseRepositoryImpl.V(r5)
                        com.im.freechat.data.sources.database.entities.contact.UserEntity r4 = r4.getUser()
                        com.im.freechat.shared.entities.contact.UserModel r4 = r5.reverseMap(r4)
                        if (r4 == 0) goto L41
                        r2.add(r4)
                        goto L41
                    L61:
                        r0.f39535b = r3
                        java.lang.Object r7 = r8.emit(r2, r0)
                        if (r7 != r1) goto L6a
                        return r1
                    L6a:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$listenFriends$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super List<? extends UserModel>> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f  */
    @Override // com.im.freechat.domain.c
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object J(@m8.g java.util.List<java.lang.Long> r6, @m8.g kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.shared.entities.DownloadInfo>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.im.freechat.data.DatabaseRepositoryImpl.i
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.DatabaseRepositoryImpl$i r0 = (com.im.freechat.data.DatabaseRepositoryImpl.i) r0
            int r1 = r0.f39657e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39657e = r1
            goto L18
        L13:
            com.im.freechat.data.DatabaseRepositoryImpl$i r0 = new com.im.freechat.data.DatabaseRepositoryImpl$i
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f39655c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39657e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L44
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r6 = r0.f39653a
            java.util.List r6 = (java.util.List) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L70
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            java.lang.Object r6 = r0.f39654b
            java.util.List r6 = (java.util.List) r6
            java.lang.Object r2 = r0.f39653a
            com.im.freechat.data.DatabaseRepositoryImpl r2 = (com.im.freechat.data.DatabaseRepositoryImpl) r2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L57
        L44:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.data.sources.database.entities.download.DownloadDao r7 = r5.f39483g
            r0.f39653a = r5
            r0.f39654b = r6
            r0.f39657e = r4
            java.lang.Object r7 = r7.getDownloads(r6, r0)
            if (r7 != r1) goto L56
            return r1
        L56:
            r2 = r5
        L57:
            java.util.List r7 = (java.util.List) r7
            com.im.freechat.data.sources.database.entities.download.DownloadEntityMapper r4 = r2.f39478b
            java.util.List r7 = r4.reverseMap(r7)
            com.im.freechat.data.sources.database.entities.download.DownloadDao r2 = r2.f39483g
            r0.f39653a = r7
            r4 = 0
            r0.f39654b = r4
            r0.f39657e = r3
            java.lang.Object r6 = r2.removeDownloads(r6, r0)
            if (r6 != r1) goto L6f
            return r1
        L6f:
            r6 = r7
        L70:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl.J(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object K(int i4, int i10, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object insertOrUpdate = this.f39486j.insertOrUpdate((MemberDao) new MemberEntity(i10, i4, ChatMember.Role.NORMAL, ChatMember.Status.NORMAL), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return insertOrUpdate == coroutine_suspended ? insertOrUpdate : Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<List<DownloadInfo>> L() {
        final kotlinx.coroutines.flow.i<List<DownloadEntity>> filesByStatuses = this.f39483g.getFilesByStatuses(1, 4, 2);
        return new kotlinx.coroutines.flow.i<List<? extends DownloadInfo>>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$getActiveDownloads$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$getActiveDownloads$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<List<? extends DownloadEntity>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39492a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39493b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$getActiveDownloads$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$getActiveDownloads$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39494a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39495b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39496c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39494a = obj;
                        this.f39495b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39492a = jVar;
                    this.f39493b = databaseRepositoryImpl;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.util.List<? extends com.im.freechat.data.sources.database.entities.download.DownloadEntity> r5, @m8.g kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.im.freechat.data.DatabaseRepositoryImpl$getActiveDownloads$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.im.freechat.data.DatabaseRepositoryImpl$getActiveDownloads$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$getActiveDownloads$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39495b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39495b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$getActiveDownloads$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$getActiveDownloads$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.f39494a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39495b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4b
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.j r6 = r4.f39492a
                        java.util.List r5 = (java.util.List) r5
                        com.im.freechat.data.DatabaseRepositoryImpl r2 = r4.f39493b
                        com.im.freechat.data.sources.database.entities.download.DownloadEntityMapper r2 = com.im.freechat.data.DatabaseRepositoryImpl.W(r2)
                        java.util.List r5 = r2.reverseMap(r5)
                        r0.f39495b = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L4b
                        return r1
                    L4b:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$getActiveDownloads$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super List<? extends DownloadInfo>> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object M(int i4, @m8.g String str, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object updateUserMask = this.f39484h.updateUserMask(i4, str, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return updateUserMask == coroutine_suspended ? updateUserMask : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d9 A[LOOP:1: B:36:0x00d3->B:38:0x00d9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f6 A[RETURN] */
    @Override // com.im.freechat.domain.c
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object N(@m8.g java.util.List<com.im.freechat.shared.entities.DownloadInfo> r12, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl.N(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<List<ChatMember>> O(int i4) {
        final kotlinx.coroutines.flow.i<List<ChatMemberEntity>> listenAllContactsForChat = this.f39486j.listenAllContactsForChat(i4);
        return new kotlinx.coroutines.flow.i<List<? extends ChatMember>>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$subscribeMembers$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeMembers$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<List<? extends ChatMemberEntity>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39580a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39581b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$subscribeMembers$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeMembers$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39582a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39583b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39584c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39582a = obj;
                        this.f39583b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39580a = jVar;
                    this.f39581b = databaseRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.util.List<? extends com.im.freechat.data.sources.database.entities.member.ChatMemberEntity> r7, @m8.g kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.im.freechat.data.DatabaseRepositoryImpl$subscribeMembers$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeMembers$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$subscribeMembers$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39583b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39583b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeMembers$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$subscribeMembers$$inlined$map$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.f39582a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39583b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L6a
                    L29:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L31:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlinx.coroutines.flow.j r8 = r6.f39580a
                        java.util.List r7 = (java.util.List) r7
                        java.util.ArrayList r2 = new java.util.ArrayList
                        r4 = 10
                        int r4 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r7, r4)
                        r2.<init>(r4)
                        java.util.Iterator r7 = r7.iterator()
                    L47:
                        boolean r4 = r7.hasNext()
                        if (r4 == 0) goto L61
                        java.lang.Object r4 = r7.next()
                        com.im.freechat.data.sources.database.entities.member.ChatMemberEntity r4 = (com.im.freechat.data.sources.database.entities.member.ChatMemberEntity) r4
                        com.im.freechat.data.DatabaseRepositoryImpl r5 = r6.f39581b
                        com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r5 = com.im.freechat.data.DatabaseRepositoryImpl.V(r5)
                        com.im.freechat.shared.entities.chat.ChatMember r4 = r5.map(r4)
                        r2.add(r4)
                        goto L47
                    L61:
                        r0.f39583b = r3
                        java.lang.Object r7 = r8.emit(r2, r0)
                        if (r7 != r1) goto L6a
                        return r1
                    L6a:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$subscribeMembers$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super List<? extends ChatMember>> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<Chat> P(int i4) {
        final kotlinx.coroutines.flow.i<ChatWithContacts> subscribeChat = this.f39485i.subscribeChat(i4);
        return new kotlinx.coroutines.flow.i<Chat>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$subscribeChat$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeChat$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<ChatWithContacts> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39556a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39557b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$subscribeChat$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeChat$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39558a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39559b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39560c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39558a = obj;
                        this.f39559b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39556a = jVar;
                    this.f39557b = databaseRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(com.im.freechat.data.sources.database.entities.chat.ChatWithContacts r7, @m8.g kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.im.freechat.data.DatabaseRepositoryImpl$subscribeChat$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeChat$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$subscribeChat$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39559b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39559b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeChat$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$subscribeChat$$inlined$map$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.f39558a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39559b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L57
                    L29:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L31:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlinx.coroutines.flow.j r8 = r6.f39556a
                        com.im.freechat.data.sources.database.entities.chat.ChatWithContacts r7 = (com.im.freechat.data.sources.database.entities.chat.ChatWithContacts) r7
                        com.im.freechat.data.DatabaseRepositoryImpl r2 = r6.f39557b
                        com.im.freechat.data.sources.database.entities.chat.ChatMapper r2 = com.im.freechat.data.DatabaseRepositoryImpl.T(r2)
                        com.im.freechat.data.DatabaseRepositoryImpl r4 = r6.f39557b
                        com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r4 = com.im.freechat.data.DatabaseRepositoryImpl.V(r4)
                        com.im.freechat.data.DatabaseRepositoryImpl r5 = r6.f39557b
                        com.im.freechat.data.sources.database.entities.message.MessageMapper r5 = com.im.freechat.data.DatabaseRepositoryImpl.Y(r5)
                        com.im.freechat.shared.entities.chat.Chat r7 = r2.map(r7, r4, r5)
                        r0.f39559b = r3
                        java.lang.Object r7 = r8.emit(r7, r0)
                        if (r7 != r1) goto L57
                        return r1
                    L57:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$subscribeChat$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super Chat> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    @Override // com.im.freechat.domain.c
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object Q(@m8.g java.lang.String r9, @m8.g kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.shared.entities.message.Message>> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.im.freechat.data.DatabaseRepositoryImpl.k
            if (r0 == 0) goto L13
            r0 = r10
            com.im.freechat.data.DatabaseRepositoryImpl$k r0 = (com.im.freechat.data.DatabaseRepositoryImpl.k) r0
            int r1 = r0.f39667d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39667d = r1
            goto L18
        L13:
            com.im.freechat.data.DatabaseRepositoryImpl$k r0 = new com.im.freechat.data.DatabaseRepositoryImpl$k
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f39665b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39667d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r9 = r0.f39664a
            com.im.freechat.data.DatabaseRepositoryImpl r9 = (com.im.freechat.data.DatabaseRepositoryImpl) r9
            kotlin.ResultKt.throwOnFailure(r10)
            goto L46
        L2d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L35:
            kotlin.ResultKt.throwOnFailure(r10)
            com.im.freechat.data.sources.database.entities.message.MessageDao r10 = r8.f39487k
            r0.f39664a = r8
            r0.f39667d = r3
            java.lang.Object r10 = r10.findMessagesByQuery(r9, r0)
            if (r10 != r1) goto L45
            return r1
        L45:
            r9 = r8
        L46:
            java.lang.Iterable r10 = (java.lang.Iterable) r10
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r10 = r10.iterator()
        L51:
            boolean r1 = r10.hasNext()
            if (r1 == 0) goto L6f
            java.lang.Object r1 = r10.next()
            r3 = r1
            com.im.freechat.data.sources.database.entities.message.FullMessageEntity r3 = (com.im.freechat.data.sources.database.entities.message.FullMessageEntity) r3
            com.im.freechat.data.sources.database.entities.message.MessageMapper r2 = r9.f39481e
            com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r4 = r9.f39479c
            r5 = 0
            r6 = 4
            r7 = 0
            com.im.freechat.shared.entities.message.Message r1 = com.im.freechat.data.sources.database.entities.message.MessageMapper.map$default(r2, r3, r4, r5, r6, r7)
            if (r1 == 0) goto L51
            r0.add(r1)
            goto L51
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl.Q(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    @Override // com.im.freechat.domain.c
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object R(@m8.g java.util.List<java.lang.Long> r9, @m8.g kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.shared.entities.message.Message>> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.im.freechat.data.DatabaseRepositoryImpl.g
            if (r0 == 0) goto L13
            r0 = r10
            com.im.freechat.data.DatabaseRepositoryImpl$g r0 = (com.im.freechat.data.DatabaseRepositoryImpl.g) r0
            int r1 = r0.f39649d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39649d = r1
            goto L18
        L13:
            com.im.freechat.data.DatabaseRepositoryImpl$g r0 = new com.im.freechat.data.DatabaseRepositoryImpl$g
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f39647b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39649d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r9 = r0.f39646a
            com.im.freechat.data.DatabaseRepositoryImpl r9 = (com.im.freechat.data.DatabaseRepositoryImpl) r9
            kotlin.ResultKt.throwOnFailure(r10)
            goto L46
        L2d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L35:
            kotlin.ResultKt.throwOnFailure(r10)
            com.im.freechat.data.sources.database.entities.message.MessageDao r10 = r8.f39487k
            r0.f39646a = r8
            r0.f39649d = r3
            java.lang.Object r10 = r10.getMessagesToForward(r9, r0)
            if (r10 != r1) goto L45
            return r1
        L45:
            r9 = r8
        L46:
            java.util.List r10 = (java.util.List) r10
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r10 = r10.iterator()
        L51:
            boolean r1 = r10.hasNext()
            if (r1 == 0) goto L6f
            java.lang.Object r1 = r10.next()
            r3 = r1
            com.im.freechat.data.sources.database.entities.message.FullMessageEntity r3 = (com.im.freechat.data.sources.database.entities.message.FullMessageEntity) r3
            com.im.freechat.data.sources.database.entities.message.MessageMapper r2 = r9.f39481e
            com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r4 = r9.f39479c
            r5 = 0
            r6 = 4
            r7 = 0
            com.im.freechat.shared.entities.message.Message r1 = com.im.freechat.data.sources.database.entities.message.MessageMapper.map$default(r2, r3, r4, r5, r6, r7)
            if (r1 == 0) goto L51
            r0.add(r1)
            goto L51
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl.R(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object S(@m8.g Continuation<? super kotlinx.coroutines.flow.i<Integer>> continuation) {
        List<? extends Status> listOf;
        kotlinx.coroutines.flow.i<Integer> listenTotalUnreadCount = this.f39485i.listenTotalUnreadCount();
        FriendStatusDao friendStatusDao = this.f39489m;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Status.REQUEST_RECEIVED);
        return kotlinx.coroutines.flow.k.J0(listenTotalUnreadCount, friendStatusDao.listenCountWithStatus(listOf), new h(null));
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object a(@m8.g Continuation<? super Unit> continuation) {
        this.f39477a.clearAllTables();
        return Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object b(@m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object resetSendings = this.f39487k.resetSendings(continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return resetSendings == coroutine_suspended ? resetSendings : Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object c(int i4, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object blockContact = this.f39484h.blockContact(i4, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return blockContact == coroutine_suspended ? blockContact : Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<Integer> d(int i4) {
        return this.f39485i.listenSingleChatForUserId(i4);
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<List<FriendStatus>> e() {
        List<? extends Status> listOf;
        FriendStatusDao friendStatusDao = this.f39489m;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Status.REQUEST_RECEIVED);
        final kotlinx.coroutines.flow.i<List<UserRelationStatus>> allWithStatus = friendStatusDao.getAllWithStatus(listOf);
        return new kotlinx.coroutines.flow.i<List<? extends FriendStatus>>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<List<? extends UserRelationStatus>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39540a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39541b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39542a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39543b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39544c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39542a = obj;
                        this.f39543b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39540a = jVar;
                    this.f39541b = databaseRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.util.List<? extends com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus> r8, @m8.g kotlin.coroutines.Continuation r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof com.im.freechat.data.DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        com.im.freechat.data.DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39543b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39543b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.f39542a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39543b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r9)
                        goto L6c
                    L29:
                        java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                        java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                        r8.<init>(r9)
                        throw r8
                    L31:
                        kotlin.ResultKt.throwOnFailure(r9)
                        kotlinx.coroutines.flow.j r9 = r7.f39540a
                        java.util.List r8 = (java.util.List) r8
                        java.util.ArrayList r2 = new java.util.ArrayList
                        r2.<init>()
                        java.util.Iterator r8 = r8.iterator()
                    L41:
                        boolean r4 = r8.hasNext()
                        if (r4 == 0) goto L63
                        java.lang.Object r4 = r8.next()
                        com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus r4 = (com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus) r4
                        com.im.freechat.data.DatabaseRepositoryImpl r5 = r7.f39541b
                        com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusMapper r5 = com.im.freechat.data.DatabaseRepositoryImpl.U(r5)
                        com.im.freechat.data.DatabaseRepositoryImpl r6 = r7.f39541b
                        com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r6 = com.im.freechat.data.DatabaseRepositoryImpl.V(r6)
                        com.im.freechat.shared.entities.chat.FriendStatus r4 = r5.map(r4, r6)
                        if (r4 == 0) goto L41
                        r2.add(r4)
                        goto L41
                    L63:
                        r0.f39543b = r3
                        java.lang.Object r8 = r9.emit(r2, r0)
                        if (r8 != r1) goto L6c
                        return r1
                    L6c:
                        kotlin.Unit r8 = kotlin.Unit.INSTANCE
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$listenReceivedFriendRequests$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super List<? extends FriendStatus>> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<UserModel> f(int i4) {
        final kotlinx.coroutines.flow.i<UserEntity> subscribeContact = this.f39484h.subscribeContact(i4);
        return new kotlinx.coroutines.flow.i<UserModel>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$subscribeContact$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeContact$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<UserEntity> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39572a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39573b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$subscribeContact$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeContact$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39574a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39575b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39576c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39574a = obj;
                        this.f39575b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39572a = jVar;
                    this.f39573b = databaseRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(com.im.freechat.data.sources.database.entities.contact.UserEntity r5, @m8.g kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.im.freechat.data.DatabaseRepositoryImpl$subscribeContact$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeContact$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$subscribeContact$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39575b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39575b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeContact$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$subscribeContact$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.f39574a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39575b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4b
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.j r6 = r4.f39572a
                        com.im.freechat.data.sources.database.entities.contact.UserEntity r5 = (com.im.freechat.data.sources.database.entities.contact.UserEntity) r5
                        com.im.freechat.data.DatabaseRepositoryImpl r2 = r4.f39573b
                        com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r2 = com.im.freechat.data.DatabaseRepositoryImpl.V(r2)
                        com.im.freechat.shared.entities.contact.UserModel r5 = r2.reverseMap(r5)
                        r0.f39575b = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L4b
                        return r1
                    L4b:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$subscribeContact$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super UserModel> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object g(int i4, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object deleteByUserId = this.f39489m.deleteByUserId(i4, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return deleteByUserId == coroutine_suspended ? deleteByUserId : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d A[LOOP:0: B:19:0x0057->B:21:0x005d, LOOP_END] */
    @Override // com.im.freechat.domain.c
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object h(@m8.g kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.shared.entities.chat.Chat>> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.im.freechat.data.DatabaseRepositoryImpl.c
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.DatabaseRepositoryImpl$c r0 = (com.im.freechat.data.DatabaseRepositoryImpl.c) r0
            int r1 = r0.f39633d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39633d = r1
            goto L18
        L13:
            com.im.freechat.data.DatabaseRepositoryImpl$c r0 = new com.im.freechat.data.DatabaseRepositoryImpl$c
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f39631b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39633d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r0 = r0.f39630a
            com.im.freechat.data.DatabaseRepositoryImpl r0 = (com.im.freechat.data.DatabaseRepositoryImpl) r0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L46
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.data.sources.database.entities.chat.ChatDao r7 = r6.f39485i
            r0.f39630a = r6
            r0.f39633d = r3
            java.lang.Object r7 = r7.getAllChats(r0)
            if (r7 != r1) goto L45
            return r1
        L45:
            r0 = r6
        L46:
            java.lang.Iterable r7 = (java.lang.Iterable) r7
            java.util.ArrayList r1 = new java.util.ArrayList
            r2 = 10
            int r2 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r7, r2)
            r1.<init>(r2)
            java.util.Iterator r7 = r7.iterator()
        L57:
            boolean r2 = r7.hasNext()
            if (r2 == 0) goto L71
            java.lang.Object r2 = r7.next()
            com.im.freechat.data.sources.database.entities.chat.ChatWithContacts r2 = (com.im.freechat.data.sources.database.entities.chat.ChatWithContacts) r2
            com.im.freechat.data.sources.database.entities.chat.ChatMapper r3 = r0.f39480d
            com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r4 = r0.f39479c
            com.im.freechat.data.sources.database.entities.message.MessageMapper r5 = r0.f39481e
            com.im.freechat.shared.entities.chat.Chat r2 = r3.map(r2, r4, r5)
            r1.add(r2)
            goto L57
        L71:
            java.util.List r7 = kotlin.collections.CollectionsKt.filterNotNull(r1)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl.h(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object i(@m8.g List<UserModel> list, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object synchronizeDatabase = this.f39484h.synchronizeDatabase(this.f39479c.map(list), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return synchronizeDatabase == coroutine_suspended ? synchronizeDatabase : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @Override // com.im.freechat.domain.c
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object j(@m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.contact.UserModel> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.im.freechat.data.DatabaseRepositoryImpl.f
            if (r0 == 0) goto L13
            r0 = r5
            com.im.freechat.data.DatabaseRepositoryImpl$f r0 = (com.im.freechat.data.DatabaseRepositoryImpl.f) r0
            int r1 = r0.f39645d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39645d = r1
            goto L18
        L13:
            com.im.freechat.data.DatabaseRepositoryImpl$f r0 = new com.im.freechat.data.DatabaseRepositoryImpl$f
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f39643b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39645d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r0 = r0.f39642a
            com.im.freechat.data.DatabaseRepositoryImpl r0 = (com.im.freechat.data.DatabaseRepositoryImpl) r0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L46
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            com.im.freechat.data.sources.database.entities.contact.UserDao r5 = r4.f39484h
            r0.f39642a = r4
            r0.f39645d = r3
            java.lang.Object r5 = r5.getCurrentUser(r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            r0 = r4
        L46:
            com.im.freechat.data.sources.database.entities.contact.UserEntity r5 = (com.im.freechat.data.sources.database.entities.contact.UserEntity) r5
            com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r0 = r0.f39479c
            com.im.freechat.shared.entities.contact.UserModel r5 = r0.reverseMap(r5)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl.j(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object k(int i4, @m8.g String str, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object updateUserName = this.f39484h.updateUserName(i4, str, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return updateUserName == coroutine_suspended ? updateUserName : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056 A[LOOP:0: B:18:0x0050->B:20:0x0056, LOOP_END] */
    @Override // com.im.freechat.domain.c
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object l(@m8.g java.util.List<java.lang.Integer> r5, @m8.g kotlin.coroutines.Continuation<? super java.util.List<java.lang.Integer>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.data.DatabaseRepositoryImpl.a
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.data.DatabaseRepositoryImpl$a r0 = (com.im.freechat.data.DatabaseRepositoryImpl.a) r0
            int r1 = r0.f39625c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39625c = r1
            goto L18
        L13:
            com.im.freechat.data.DatabaseRepositoryImpl$a r0 = new com.im.freechat.data.DatabaseRepositoryImpl$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f39623a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39625c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L3f
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.data.sources.database.entities.contact.UserDao r6 = r4.f39484h
            r0.f39625c = r3
            java.lang.Object r6 = r6.getContacts(r5, r0)
            if (r6 != r1) goto L3f
            return r1
        L3f:
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.ArrayList r5 = new java.util.ArrayList
            r0 = 10
            int r0 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r6, r0)
            r5.<init>(r0)
            java.util.Iterator r6 = r6.iterator()
        L50:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L68
            java.lang.Object r0 = r6.next()
            com.im.freechat.data.sources.database.entities.contact.UserEntity r0 = (com.im.freechat.data.sources.database.entities.contact.UserEntity) r0
            int r0 = r0.getUserId()
            java.lang.Integer r0 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r0)
            r5.add(r0)
            goto L50
        L68:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl.l(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object m(@m8.g Continuation<? super Integer> continuation) {
        return ChatDao.getServiceChatId$default(this.f39485i, 0, continuation, 1, null);
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object n(int i4, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object followContact = this.f39484h.followContact(i4, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return followContact == coroutine_suspended ? followContact : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0051 A[ORIG_RETURN, RETURN] */
    @Override // com.im.freechat.domain.c
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object o(int r5, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.contact.UserModel> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.data.DatabaseRepositoryImpl.d
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.data.DatabaseRepositoryImpl$d r0 = (com.im.freechat.data.DatabaseRepositoryImpl.d) r0
            int r1 = r0.f39637d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f39637d = r1
            goto L18
        L13:
            com.im.freechat.data.DatabaseRepositoryImpl$d r0 = new com.im.freechat.data.DatabaseRepositoryImpl$d
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f39635b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f39637d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f39634a
            com.im.freechat.data.DatabaseRepositoryImpl r5 = (com.im.freechat.data.DatabaseRepositoryImpl) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L46
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.data.sources.database.entities.contact.UserDao r6 = r4.f39484h
            r0.f39634a = r4
            r0.f39637d = r3
            java.lang.Object r6 = r6.getContact(r5, r0)
            if (r6 != r1) goto L45
            return r1
        L45:
            r5 = r4
        L46:
            com.im.freechat.data.sources.database.entities.contact.UserEntity r6 = (com.im.freechat.data.sources.database.entities.contact.UserEntity) r6
            if (r6 == 0) goto L51
            com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r5 = r5.f39479c
            com.im.freechat.shared.entities.contact.UserModel r5 = r5.reverseMap(r6)
            goto L52
        L51:
            r5 = 0
        L52:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl.o(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object p(int i4, @m8.g Continuation<? super kotlinx.coroutines.flow.i<Message>> continuation) {
        final kotlinx.coroutines.flow.i<FullMessageEntity> subscribePinnedMessageByChatId = this.f39487k.subscribePinnedMessageByChatId(i4);
        return new kotlinx.coroutines.flow.i<Message>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$subscribePinnedMessageByChatId$lambda-31$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribePinnedMessageByChatId$lambda-31$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<FullMessageEntity> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39617a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39618b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$subscribePinnedMessageByChatId$lambda-31$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribePinnedMessageByChatId$lambda-31$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39619a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39620b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39621c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39619a = obj;
                        this.f39620b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39617a = jVar;
                    this.f39618b = databaseRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(com.im.freechat.data.sources.database.entities.message.FullMessageEntity r11, @m8.g kotlin.coroutines.Continuation r12) {
                    /*
                        r10 = this;
                        boolean r0 = r12 instanceof com.im.freechat.data.DatabaseRepositoryImpl$subscribePinnedMessageByChatId$lambda31$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r12
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribePinnedMessageByChatId$lambda-31$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$subscribePinnedMessageByChatId$lambda31$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39620b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39620b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribePinnedMessageByChatId$lambda-31$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$subscribePinnedMessageByChatId$lambda-31$$inlined$map$1$2$1
                        r0.<init>(r12)
                    L18:
                        java.lang.Object r12 = r0.f39619a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39620b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r12)
                        goto L55
                    L29:
                        java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                        java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                        r11.<init>(r12)
                        throw r11
                    L31:
                        kotlin.ResultKt.throwOnFailure(r12)
                        kotlinx.coroutines.flow.j r12 = r10.f39617a
                        r5 = r11
                        com.im.freechat.data.sources.database.entities.message.FullMessageEntity r5 = (com.im.freechat.data.sources.database.entities.message.FullMessageEntity) r5
                        com.im.freechat.data.DatabaseRepositoryImpl r11 = r10.f39618b
                        com.im.freechat.data.sources.database.entities.message.MessageMapper r4 = com.im.freechat.data.DatabaseRepositoryImpl.Y(r11)
                        com.im.freechat.data.DatabaseRepositoryImpl r11 = r10.f39618b
                        com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r6 = com.im.freechat.data.DatabaseRepositoryImpl.V(r11)
                        r7 = 0
                        r8 = 4
                        r9 = 0
                        com.im.freechat.shared.entities.message.Message r11 = com.im.freechat.data.sources.database.entities.message.MessageMapper.map$default(r4, r5, r6, r7, r8, r9)
                        r0.f39620b = r3
                        java.lang.Object r11 = r12.emit(r11, r0)
                        if (r11 != r1) goto L55
                        return r1
                    L55:
                        kotlin.Unit r11 = kotlin.Unit.INSTANCE
                        return r11
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$subscribePinnedMessageByChatId$lambda31$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super Message> jVar, @m8.g Continuation continuation2) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation2);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object q(@m8.g List<UserModel> list, @m8.g Continuation<? super Unit> continuation) {
        int collectionSizeOrDefault;
        Object coroutine_suspended;
        UserDao userDao = this.f39484h;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (UserModel userModel : list) {
            arrayList.add(this.f39479c.map(userModel));
        }
        Object synchronizeDatabase = userDao.synchronizeDatabase(arrayList, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return synchronizeDatabase == coroutine_suspended ? synchronizeDatabase : Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<List<DownloadInfo>> r() {
        final kotlinx.coroutines.flow.i<List<DownloadEntity>> downloads = this.f39483g.getDownloads();
        return new kotlinx.coroutines.flow.i<List<? extends DownloadInfo>>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$listenChatDownloads$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenChatDownloads$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<List<? extends DownloadEntity>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39508a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39509b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$listenChatDownloads$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenChatDownloads$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39510a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39511b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39512c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39510a = obj;
                        this.f39511b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39508a = jVar;
                    this.f39509b = databaseRepositoryImpl;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.util.List<? extends com.im.freechat.data.sources.database.entities.download.DownloadEntity> r5, @m8.g kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.im.freechat.data.DatabaseRepositoryImpl$listenChatDownloads$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.im.freechat.data.DatabaseRepositoryImpl$listenChatDownloads$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$listenChatDownloads$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39511b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39511b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$listenChatDownloads$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$listenChatDownloads$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.f39510a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39511b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4b
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.j r6 = r4.f39508a
                        java.util.List r5 = (java.util.List) r5
                        com.im.freechat.data.DatabaseRepositoryImpl r2 = r4.f39509b
                        com.im.freechat.data.sources.database.entities.download.DownloadEntityMapper r2 = com.im.freechat.data.DatabaseRepositoryImpl.W(r2)
                        java.util.List r5 = r2.reverseMap(r5)
                        r0.f39511b = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L4b
                        return r1
                    L4b:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$listenChatDownloads$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super List<? extends DownloadInfo>> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object s(@m8.g Continuation<? super kotlinx.coroutines.flow.i<MessageWithChat>> continuation) {
        final kotlinx.coroutines.flow.i j02 = kotlinx.coroutines.flow.k.j0(kotlinx.coroutines.flow.k.h0(kotlinx.coroutines.flow.k.s0(this.f39487k.subscribeLastReceivedMessage()), l.f39668a), 1);
        final kotlinx.coroutines.flow.i<FullMessageEntity> iVar = new kotlinx.coroutines.flow.i<FullMessageEntity>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$filter$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$filter$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<FullMessageEntity> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39599a;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$filter$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$filter$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39600a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39601b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39602c;

                    /* renamed from: d  reason: collision with root package name */
                    Object f39603d;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39600a = obj;
                        this.f39601b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar) {
                    this.f39599a = jVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(com.im.freechat.data.sources.database.entities.message.FullMessageEntity r7, @m8.g kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$filter$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39601b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39601b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$filter$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$filter$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.f39600a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39601b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L63
                    L29:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L31:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlinx.coroutines.flow.j r8 = r6.f39599a
                        r2 = r7
                        com.im.freechat.data.sources.database.entities.message.FullMessageEntity r2 = (com.im.freechat.data.sources.database.entities.message.FullMessageEntity) r2
                        com.im.freechat.data.sources.database.entities.contact.SenderEntity r4 = r2.getSenderEntity()
                        r5 = 0
                        if (r4 == 0) goto L48
                        boolean r4 = r4.isCurrentUser()
                        if (r4 != 0) goto L48
                        r4 = 1
                        goto L49
                    L48:
                        r4 = 0
                    L49:
                        if (r4 == 0) goto L58
                        com.im.freechat.data.sources.database.entities.message.MessageEntity r2 = r2.getMessageEntity()
                        com.im.freechat.shared.entities.message.Message$MessageStatus r2 = r2.getMessageStatus()
                        com.im.freechat.shared.entities.message.Message$MessageStatus r4 = com.im.freechat.shared.entities.message.Message.MessageStatus.SEND_COMPLETED
                        if (r2 != r4) goto L58
                        r5 = 1
                    L58:
                        if (r5 == 0) goto L63
                        r0.f39601b = r3
                        java.lang.Object r7 = r8.emit(r7, r0)
                        if (r7 != r1) goto L63
                        return r1
                    L63:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super FullMessageEntity> jVar, @m8.g Continuation continuation2) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar), continuation2);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
        return new kotlinx.coroutines.flow.i<MessageWithChat>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<FullMessageEntity> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39607a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39608b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2", f = "DatabaseRepositoryImpl.kt", i = {0, 0, 0}, l = {137, 140}, m = "emit", n = {"this", "$this$mapNotNull_u24lambda_u2d5", "it"}, s = {"L$0", "L$1", "L$2"})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39609a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39610b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39611c;

                    /* renamed from: e  reason: collision with root package name */
                    Object f39613e;

                    /* renamed from: f  reason: collision with root package name */
                    Object f39614f;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39609a = obj;
                        this.f39610b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39607a = jVar;
                    this.f39608b = databaseRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
                /* JADX WARN: Removed duplicated region for block: B:23:0x006e  */
                /* JADX WARN: Removed duplicated region for block: B:32:0x00a1  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(com.im.freechat.data.sources.database.entities.message.FullMessageEntity r12, @m8.g kotlin.coroutines.Continuation r13) {
                    /*
                        r11 = this;
                        boolean r0 = r13 instanceof com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r13
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39610b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39610b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2$1
                        r0.<init>(r13)
                    L18:
                        java.lang.Object r13 = r0.f39609a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39610b
                        r3 = 2
                        r4 = 1
                        if (r2 == 0) goto L45
                        if (r2 == r4) goto L35
                        if (r2 != r3) goto L2d
                        kotlin.ResultKt.throwOnFailure(r13)
                        goto Lb0
                    L2d:
                        java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                        java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                        r12.<init>(r13)
                        throw r12
                    L35:
                        java.lang.Object r12 = r0.f39614f
                        com.im.freechat.data.sources.database.entities.message.FullMessageEntity r12 = (com.im.freechat.data.sources.database.entities.message.FullMessageEntity) r12
                        java.lang.Object r2 = r0.f39613e
                        kotlinx.coroutines.flow.j r2 = (kotlinx.coroutines.flow.j) r2
                        java.lang.Object r4 = r0.f39611c
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1$2 r4 = (com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1.AnonymousClass2) r4
                        kotlin.ResultKt.throwOnFailure(r13)
                        goto L66
                    L45:
                        kotlin.ResultKt.throwOnFailure(r13)
                        kotlinx.coroutines.flow.j r2 = r11.f39607a
                        com.im.freechat.data.sources.database.entities.message.FullMessageEntity r12 = (com.im.freechat.data.sources.database.entities.message.FullMessageEntity) r12
                        com.im.freechat.data.DatabaseRepositoryImpl r13 = r11.f39608b
                        com.im.freechat.data.sources.database.entities.message.MessageEntity r5 = r12.getMessageEntity()
                        int r5 = r5.getChatId()
                        r0.f39611c = r11
                        r0.f39613e = r2
                        r0.f39614f = r12
                        r0.f39610b = r4
                        java.lang.Object r13 = r13.A(r5, r0)
                        if (r13 != r1) goto L65
                        return r1
                    L65:
                        r4 = r11
                    L66:
                        r5 = r12
                        com.im.freechat.shared.entities.chat.Chat r13 = (com.im.freechat.shared.entities.chat.Chat) r13
                        r12 = 0
                        if (r13 != 0) goto L6e
                    L6c:
                        r5 = r12
                        goto L9e
                    L6e:
                        com.im.freechat.data.DatabaseRepositoryImpl r6 = r4.f39608b
                        com.im.freechat.data.sources.database.entities.message.MessageMapper r6 = com.im.freechat.data.DatabaseRepositoryImpl.Y(r6)
                        com.im.freechat.data.DatabaseRepositoryImpl r4 = r4.f39608b
                        com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r7 = com.im.freechat.data.DatabaseRepositoryImpl.V(r4)
                        r8 = 0
                        r9 = 4
                        r10 = 0
                        r4 = r6
                        r6 = r7
                        r7 = r8
                        r8 = r9
                        r9 = r10
                        com.im.freechat.shared.entities.message.Message r4 = com.im.freechat.data.sources.database.entities.message.MessageMapper.map$default(r4, r5, r6, r7, r8, r9)
                        if (r4 != 0) goto L89
                        goto L6c
                    L89:
                        com.im.freechat.shared.entities.message.MessageWithChat r5 = new com.im.freechat.shared.entities.message.MessageWithChat
                        java.lang.String r6 = r13.getTitle()
                        if (r6 != 0) goto L93
                        java.lang.String r6 = ""
                    L93:
                        java.lang.String r7 = r13.getAvatar()
                        com.im.freechat.shared.entities.chat.Chat$Type r13 = r13.getType()
                        r5.<init>(r4, r6, r7, r13)
                    L9e:
                        if (r5 != 0) goto La1
                        goto Lb0
                    La1:
                        r0.f39611c = r12
                        r0.f39613e = r12
                        r0.f39614f = r12
                        r0.f39610b = r3
                        java.lang.Object r12 = r2.emit(r5, r0)
                        if (r12 != r1) goto Lb0
                        return r1
                    Lb0:
                        kotlin.Unit r12 = kotlin.Unit.INSTANCE
                        return r12
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$subscribeNewMessages$$inlined$mapNotNull$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super MessageWithChat> jVar, @m8.g Continuation continuation2) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation2);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<List<Chat>> t() {
        final kotlinx.coroutines.flow.i g02 = kotlinx.coroutines.flow.k.g0(this.f39485i.subscribeChats());
        return new kotlinx.coroutines.flow.i<List<? extends Chat>>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$subscribeChats$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeChats$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<List<? extends ChatWithContacts>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39564a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39565b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$subscribeChats$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {146}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeChats$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39566a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39567b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39568c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39566a = obj;
                        this.f39567b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39564a = jVar;
                    this.f39565b = databaseRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.util.List<? extends com.im.freechat.data.sources.database.entities.chat.ChatWithContacts> r9, @m8.g kotlin.coroutines.Continuation r10) {
                    /*
                        r8 = this;
                        boolean r0 = r10 instanceof com.im.freechat.data.DatabaseRepositoryImpl$subscribeChats$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r10
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeChats$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$subscribeChats$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39567b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39567b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$subscribeChats$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$subscribeChats$$inlined$map$1$2$1
                        r0.<init>(r10)
                    L18:
                        java.lang.Object r10 = r0.f39566a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39567b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r10)
                        goto L7a
                    L29:
                        java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                        java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                        r9.<init>(r10)
                        throw r9
                    L31:
                        kotlin.ResultKt.throwOnFailure(r10)
                        kotlinx.coroutines.flow.j r10 = r8.f39564a
                        java.util.List r9 = (java.util.List) r9
                        java.util.ArrayList r2 = new java.util.ArrayList
                        r4 = 10
                        int r4 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r9, r4)
                        r2.<init>(r4)
                        java.util.Iterator r9 = r9.iterator()
                    L47:
                        boolean r4 = r9.hasNext()
                        if (r4 == 0) goto L6d
                        java.lang.Object r4 = r9.next()
                        com.im.freechat.data.sources.database.entities.chat.ChatWithContacts r4 = (com.im.freechat.data.sources.database.entities.chat.ChatWithContacts) r4
                        com.im.freechat.data.DatabaseRepositoryImpl r5 = r8.f39565b
                        com.im.freechat.data.sources.database.entities.chat.ChatMapper r5 = com.im.freechat.data.DatabaseRepositoryImpl.T(r5)
                        com.im.freechat.data.DatabaseRepositoryImpl r6 = r8.f39565b
                        com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r6 = com.im.freechat.data.DatabaseRepositoryImpl.V(r6)
                        com.im.freechat.data.DatabaseRepositoryImpl r7 = r8.f39565b
                        com.im.freechat.data.sources.database.entities.message.MessageMapper r7 = com.im.freechat.data.DatabaseRepositoryImpl.Y(r7)
                        com.im.freechat.shared.entities.chat.Chat r4 = r5.map(r4, r6, r7)
                        r2.add(r4)
                        goto L47
                    L6d:
                        java.util.List r9 = kotlin.collections.CollectionsKt.filterNotNull(r2)
                        r0.f39567b = r3
                        java.lang.Object r9 = r10.emit(r9, r0)
                        if (r9 != r1) goto L7a
                        return r1
                    L7a:
                        kotlin.Unit r9 = kotlin.Unit.INSTANCE
                        return r9
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$subscribeChats$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super List<? extends Chat>> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object u(@m8.g DownloadInfo downloadInfo, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object insertOrUpdate = this.f39483g.insertOrUpdate((DownloadDao) this.f39478b.map(downloadInfo), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return insertOrUpdate == coroutine_suspended ? insertOrUpdate : Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object v(int i4, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object unblockContact = this.f39484h.unblockContact(i4, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return unblockContact == coroutine_suspended ? unblockContact : Unit.INSTANCE;
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<List<UserModel>> w() {
        final kotlinx.coroutines.flow.i<List<UserEntity>> listenAllContacts = this.f39484h.listenAllContacts();
        return new kotlinx.coroutines.flow.i<List<? extends UserModel>>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$listenAllContacts$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenAllContacts$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<List<? extends UserEntity>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39500a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39501b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$listenAllContacts$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenAllContacts$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39502a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39503b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39504c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39502a = obj;
                        this.f39503b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39500a = jVar;
                    this.f39501b = databaseRepositoryImpl;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.util.List<? extends com.im.freechat.data.sources.database.entities.contact.UserEntity> r5, @m8.g kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.im.freechat.data.DatabaseRepositoryImpl$listenAllContacts$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.im.freechat.data.DatabaseRepositoryImpl$listenAllContacts$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$listenAllContacts$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39503b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39503b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$listenAllContacts$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$listenAllContacts$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.f39502a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39503b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4b
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.j r6 = r4.f39500a
                        java.util.List r5 = (java.util.List) r5
                        com.im.freechat.data.DatabaseRepositoryImpl r2 = r4.f39501b
                        com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r2 = com.im.freechat.data.DatabaseRepositoryImpl.V(r2)
                        java.util.List r5 = r2.reverseMap(r5)
                        r0.f39503b = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L4b
                        return r1
                    L4b:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$listenAllContacts$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super List<? extends UserModel>> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.g
    public kotlinx.coroutines.flow.i<List<Chat>> x(int i4) {
        final kotlinx.coroutines.flow.i<List<ChatWithContacts>> listenCommonGroupsForUserId = this.f39485i.listenCommonGroupsForUserId(i4);
        return new kotlinx.coroutines.flow.i<List<? extends Chat>>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$listenCommonGroups$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenCommonGroups$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<List<? extends ChatWithContacts>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39516a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39517b;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$listenCommonGroups$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {}, l = {146}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$listenCommonGroups$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39518a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39519b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39520c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39518a = obj;
                        this.f39519b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl) {
                    this.f39516a = jVar;
                    this.f39517b = databaseRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.util.List<? extends com.im.freechat.data.sources.database.entities.chat.ChatWithContacts> r9, @m8.g kotlin.coroutines.Continuation r10) {
                    /*
                        r8 = this;
                        boolean r0 = r10 instanceof com.im.freechat.data.DatabaseRepositoryImpl$listenCommonGroups$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r10
                        com.im.freechat.data.DatabaseRepositoryImpl$listenCommonGroups$$inlined$map$1$2$1 r0 = (com.im.freechat.data.DatabaseRepositoryImpl$listenCommonGroups$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39519b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39519b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.DatabaseRepositoryImpl$listenCommonGroups$$inlined$map$1$2$1 r0 = new com.im.freechat.data.DatabaseRepositoryImpl$listenCommonGroups$$inlined$map$1$2$1
                        r0.<init>(r10)
                    L18:
                        java.lang.Object r10 = r0.f39518a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39519b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r10)
                        goto L7a
                    L29:
                        java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                        java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                        r9.<init>(r10)
                        throw r9
                    L31:
                        kotlin.ResultKt.throwOnFailure(r10)
                        kotlinx.coroutines.flow.j r10 = r8.f39516a
                        java.util.List r9 = (java.util.List) r9
                        java.util.ArrayList r2 = new java.util.ArrayList
                        r4 = 10
                        int r4 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r9, r4)
                        r2.<init>(r4)
                        java.util.Iterator r9 = r9.iterator()
                    L47:
                        boolean r4 = r9.hasNext()
                        if (r4 == 0) goto L6d
                        java.lang.Object r4 = r9.next()
                        com.im.freechat.data.sources.database.entities.chat.ChatWithContacts r4 = (com.im.freechat.data.sources.database.entities.chat.ChatWithContacts) r4
                        com.im.freechat.data.DatabaseRepositoryImpl r5 = r8.f39517b
                        com.im.freechat.data.sources.database.entities.chat.ChatMapper r5 = com.im.freechat.data.DatabaseRepositoryImpl.T(r5)
                        com.im.freechat.data.DatabaseRepositoryImpl r6 = r8.f39517b
                        com.im.freechat.data.sources.database.entities.contact.UserEntityMapper r6 = com.im.freechat.data.DatabaseRepositoryImpl.V(r6)
                        com.im.freechat.data.DatabaseRepositoryImpl r7 = r8.f39517b
                        com.im.freechat.data.sources.database.entities.message.MessageMapper r7 = com.im.freechat.data.DatabaseRepositoryImpl.Y(r7)
                        com.im.freechat.shared.entities.chat.Chat r4 = r5.map(r4, r6, r7)
                        r2.add(r4)
                        goto L47
                    L6d:
                        java.util.List r9 = kotlin.collections.CollectionsKt.filterNotNull(r2)
                        r0.f39519b = r3
                        java.lang.Object r9 = r10.emit(r9, r0)
                        if (r9 != r1) goto L7a
                        return r1
                    L7a:
                        kotlin.Unit r9 = kotlin.Unit.INSTANCE
                        return r9
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$listenCommonGroups$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super List<? extends Chat>> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object y(int i4, long j4, @m8.g Continuation<? super kotlinx.coroutines.flow.i<? extends List<Message>>> continuation) {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final kotlinx.coroutines.flow.i g02 = kotlinx.coroutines.flow.k.g0(this.f39487k.subscribeMessages(i4, j4));
        return new kotlinx.coroutines.flow.i<List<? extends Message>>() { // from class: com.im.freechat.data.DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<List<? extends FullMessageEntity>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39589a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ DatabaseRepositoryImpl f39590b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ Map f39591c;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2", f = "DatabaseRepositoryImpl.kt", i = {0, 0}, l = {155, 164}, m = "emit", n = {"this", "it"}, s = {"L$0", "L$2"})
                /* renamed from: com.im.freechat.data.DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39592a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39593b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39594c;

                    /* renamed from: e  reason: collision with root package name */
                    Object f39596e;

                    /* renamed from: f  reason: collision with root package name */
                    Object f39597f;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39592a = obj;
                        this.f39593b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, DatabaseRepositoryImpl databaseRepositoryImpl, Map map) {
                    this.f39589a = jVar;
                    this.f39590b = databaseRepositoryImpl;
                    this.f39591c = map;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x00c1 A[LOOP:0: B:36:0x00bb->B:38:0x00c1, LOOP_END] */
                /* JADX WARN: Removed duplicated region for block: B:41:0x010e A[RETURN] */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.util.List<? extends com.im.freechat.data.sources.database.entities.message.FullMessageEntity> r14, @m8.g kotlin.coroutines.Continuation r15) {
                    /*
                        Method dump skipped, instructions count: 274
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.DatabaseRepositoryImpl$subscribeMessages$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super List<? extends Message>> jVar, @m8.g Continuation continuation2) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, this, linkedHashMap), continuation2);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.c
    @m8.h
    public Object z(int i4, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object removeContact = this.f39484h.removeContact(i4, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return removeContact == coroutine_suspended ? removeContact : Unit.INSTANCE;
    }
}
