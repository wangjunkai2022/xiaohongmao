package com.im.freechat.ui.chat.group_manager;

import android.net.Uri;
import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.domain.usecase.chat.m;
import com.im.freechat.domain.usecase.chat.n;
import com.im.freechat.domain.usecase.chat.o;
import com.im.freechat.domain.usecase.chat.p;
import com.im.freechat.domain.usecase.members.a;
import com.im.freechat.domain.usecase.members.b;
import com.im.freechat.domain.usecase.members.c;
import com.im.freechat.domain.usecase.members.f;
import com.im.freechat.domain.usecase.members.g;
import com.im.freechat.domain.usecase.members.i;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.Message;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.s0;
import timber.log.Timber;

/* compiled from: GroupManagerViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000\u008a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002¥\u0001B¡\u0001\u0012\u0006\u0010(\u001a\u00020%\u0012\u0006\u0010,\u001a\u00020)\u0012\u0006\u00100\u001a\u00020-\u0012\u0006\u00104\u001a\u000201\u0012\u0006\u00108\u001a\u000205\u0012\u0006\u0010<\u001a\u000209\u0012\u0006\u0010@\u001a\u00020=\u0012\u0006\u0010D\u001a\u00020A\u0012\u0006\u0010H\u001a\u00020E\u0012\u0006\u0010L\u001a\u00020I\u0012\u0006\u0010P\u001a\u00020M\u0012\u0006\u0010T\u001a\u00020Q\u0012\u0006\u0010X\u001a\u00020U\u0012\u0006\u0010\\\u001a\u00020Y\u0012\u0006\u0010`\u001a\u00020]\u0012\u0006\u0010d\u001a\u00020a\u0012\u0006\u0010h\u001a\u00020e\u0012\u0006\u0010l\u001a\u00020i\u0012\u0006\u0010p\u001a\u00020m¢\u0006\u0006\b£\u0001\u0010¤\u0001J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\tJ\u0014\u0010\u0019\u001a\u00020\t2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\u0017J\u000e\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001aJ\u000e\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u0005J\u000e\u0010 \u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u0005J\u000e\u0010!\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010$\u001a\u00020\t2\u0006\u0010#\u001a\u00020\"R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010@\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u0014\u0010P\u001a\u00020M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR\u0014\u0010T\u001a\u00020Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010SR\u0014\u0010X\u001a\u00020U8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010WR\u0014\u0010\\\u001a\u00020Y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bZ\u0010[R\u0014\u0010`\u001a\u00020]8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010_R\u0014\u0010d\u001a\u00020a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bb\u0010cR\u0014\u0010h\u001a\u00020e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bf\u0010gR\u0014\u0010l\u001a\u00020i8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bj\u0010kR\u0014\u0010p\u001a\u00020m8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010oR%\u0010w\u001a\u0010\u0012\f\u0012\n r*\u0004\u0018\u00010\u00050\u00050q8\u0006¢\u0006\f\n\u0004\bs\u0010t\u001a\u0004\bu\u0010vR%\u0010z\u001a\u0010\u0012\f\u0012\n r*\u0004\u0018\u00010\u00050\u00050q8\u0006¢\u0006\f\n\u0004\bx\u0010t\u001a\u0004\by\u0010vR#\u0010~\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020{0\u00170q8\u0006¢\u0006\f\n\u0004\b|\u0010t\u001a\u0004\b}\u0010vR \u0010\u0082\u0001\u001a\b\u0012\u0004\u0012\u00020\u007f0q8\u0006¢\u0006\u000e\n\u0005\b\u0080\u0001\u0010t\u001a\u0005\b\u0081\u0001\u0010vR'\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0083\u0001\u0010\u0006\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001\"\u0006\b\u0086\u0001\u0010\u0087\u0001R#\u0010\u008a\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0088\u00010\u00170q8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010tR9\u0010\u0091\u0001\u001a\u001f\u0012\u001a\u0012\u0018\u0012\u0005\u0012\u00030\u008c\u0001 r*\u000b\u0012\u0005\u0012\u00030\u008c\u0001\u0018\u00010\u00170\u00170\u008b\u00018\u0006¢\u0006\u0010\n\u0006\b\u008d\u0001\u0010\u008e\u0001\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001R9\u0010\u0094\u0001\u001a\u001f\u0012\u001a\u0012\u0018\u0012\u0005\u0012\u00030\u008c\u0001 r*\u000b\u0012\u0005\u0012\u00030\u008c\u0001\u0018\u00010\u00170\u00170\u008b\u00018\u0006¢\u0006\u0010\n\u0006\b\u0092\u0001\u0010\u008e\u0001\u001a\u0006\b\u0093\u0001\u0010\u0090\u0001R9\u0010\u0097\u0001\u001a\u001f\u0012\u001a\u0012\u0018\u0012\u0005\u0012\u00030\u008c\u0001 r*\u000b\u0012\u0005\u0012\u00030\u008c\u0001\u0018\u00010\u00170\u00170\u008b\u00018\u0006¢\u0006\u0010\n\u0006\b\u0095\u0001\u0010\u008e\u0001\u001a\u0006\b\u0096\u0001\u0010\u0090\u0001R\u0017\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0098\u00018F¢\u0006\b\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001R\u0014\u0010\u009e\u0001\u001a\u00020\u00058F¢\u0006\b\u001a\u0006\b\u009c\u0001\u0010\u009d\u0001R\u0014\u0010 \u0001\u001a\u00020\u00058F¢\u0006\b\u001a\u0006\b\u009f\u0001\u0010\u009d\u0001R\u0014\u0010¢\u0001\u001a\u00020\u00058F¢\u0006\b\u001a\u0006\b¡\u0001\u0010\u009d\u0001¨\u0006¦\u0001"}, d2 = {"Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", "", "I", "", k4.b.f84734a, "", "X", com.im.freechat.ui.chat.userprofile.j.f43244a, "L", "H", "k0", "j0", "userId", "G", "i0", "e0", ExifInterface.LONGITUDE_WEST, "d0", "a0", "", "list", "F", "", "newName", "m0", "isPublic", "g0", "show", "h0", "J", "Landroid/net/Uri;", "uri", "l0", "Lcom/im/freechat/domain/usecase/members/h;", "c", "Lcom/im/freechat/domain/usecase/members/h;", "subscribeChatMembersInteractor", "Lcom/im/freechat/domain/usecase/chat/e;", "d", "Lcom/im/freechat/domain/usecase/chat/e;", "deleteChatByIdInteractor", "Lcom/im/freechat/domain/usecase/chat/c;", "e", "Lcom/im/freechat/domain/usecase/chat/c;", "createSingleChatInteractor", "Lcom/im/freechat/domain/usecase/chat/r;", "f", "Lcom/im/freechat/domain/usecase/chat/r;", "subscribeChatInteractor", "Lcom/im/freechat/domain/usecase/members/a;", "g", "Lcom/im/freechat/domain/usecase/members/a;", "addMembersInteractor", "Lcom/im/freechat/domain/usecase/members/g;", "h", "Lcom/im/freechat/domain/usecase/members/g;", "removeMemberFromChatInteractor", "Lcom/im/freechat/domain/usecase/contact/b;", ContextChain.TAG_INFRA, "Lcom/im/freechat/domain/usecase/contact/b;", "followContactInteractor", "Lcom/im/freechat/domain/usecase/contact/f;", "j", "Lcom/im/freechat/domain/usecase/contact/f;", "removeFriendInteractor", "Lcom/im/freechat/domain/usecase/contact/a;", "k", "Lcom/im/freechat/domain/usecase/contact/a;", "blockContactInteractor", "Lcom/im/freechat/domain/usecase/contact/j;", "l", "Lcom/im/freechat/domain/usecase/contact/j;", "unblockContactInteractor", "Lcom/im/freechat/domain/usecase/members/c;", "m", "Lcom/im/freechat/domain/usecase/members/c;", "giveManagerRightsInteractor", "Lcom/im/freechat/domain/usecase/members/f;", "n", "Lcom/im/freechat/domain/usecase/members/f;", "removeManagerRightsInteractor", "Lcom/im/freechat/domain/usecase/members/b;", "o", "Lcom/im/freechat/domain/usecase/members/b;", "banMemberInteractor", "Lcom/im/freechat/domain/usecase/members/i;", "p", "Lcom/im/freechat/domain/usecase/members/i;", "unbanMemberInteractor", "Lcom/im/freechat/domain/usecase/chat/n;", "q", "Lcom/im/freechat/domain/usecase/chat/n;", "setChatNameInteractor", "Lcom/im/freechat/domain/usecase/chat/m;", "r", "Lcom/im/freechat/domain/usecase/chat/m;", "setChatAvatarInteractor", "Lcom/im/freechat/domain/usecase/chat/o;", "s", "Lcom/im/freechat/domain/usecase/chat/o;", "setChatPrivacyInteractor", "Lcom/im/freechat/domain/usecase/chat/p;", "t", "Lcom/im/freechat/domain/usecase/chat/p;", "setShowChatHistoryInteractor", "Lcom/im/freechat/domain/usecase/messages/k;", "u", "Lcom/im/freechat/domain/usecase/messages/k;", "subscribeChatMessagesInteractor", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "v", "Landroidx/lifecycle/MutableLiveData;", ExifInterface.LATITUDE_SOUTH, "()Landroidx/lifecycle/MutableLiveData;", "loading", "w", "M", "avatarLoading", "Lcom/im/freechat/shared/entities/chat/ChatMember;", y.b.f83919g, "U", "membersList", "Lcom/im/freechat/shared/entities/chat/Chat;", y.b.f83920h, "N", "chat", "z", "O", "()I", "f0", "(I)V", "Lcom/im/freechat/shared/entities/message/Message;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "messages", "Landroidx/lifecycle/LiveData;", "Lcom/im/freechat/ui/chat/history/a;", "B", "Landroidx/lifecycle/LiveData;", ExifInterface.GPS_DIRECTION_TRUE, "()Landroidx/lifecycle/LiveData;", "media", "C", "R", "links", "D", "Q", "files", "Lcom/im/freechat/shared/entities/chat/ChatMember$Role;", "P", "()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;", "currentRole", "Y", "()Z", "isAdmin", "Z", "isChatPublic", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "showChatHistory", "<init>", "(Lcom/im/freechat/domain/usecase/members/h;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/chat/c;Lcom/im/freechat/domain/usecase/chat/r;Lcom/im/freechat/domain/usecase/members/a;Lcom/im/freechat/domain/usecase/members/g;Lcom/im/freechat/domain/usecase/contact/b;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/a;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/usecase/members/c;Lcom/im/freechat/domain/usecase/members/f;Lcom/im/freechat/domain/usecase/members/b;Lcom/im/freechat/domain/usecase/members/i;Lcom/im/freechat/domain/usecase/chat/n;Lcom/im/freechat/domain/usecase/chat/m;Lcom/im/freechat/domain/usecase/chat/o;Lcom/im/freechat/domain/usecase/chat/p;Lcom/im/freechat/domain/usecase/messages/k;)V", "Directions", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GroupManagerViewModel extends com.im.freechat.base.a<Directions> {
    @m8.g
    private final MutableLiveData<List<Message>> A;
    @m8.g
    private final LiveData<List<com.im.freechat.ui.chat.history.a>> B;
    @m8.g
    private final LiveData<List<com.im.freechat.ui.chat.history.a>> C;
    @m8.g
    private final LiveData<List<com.im.freechat.ui.chat.history.a>> D;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.members.h f42716c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.e f42717d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.c f42718e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.r f42719f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.members.a f42720g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.members.g f42721h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.b f42722i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.f f42723j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.a f42724k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.contact.j f42725l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.members.c f42726m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.members.f f42727n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.members.b f42728o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.members.i f42729p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.n f42730q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.m f42731r;
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.o f42732s;
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.p f42733t;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.messages.k f42734u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final MutableLiveData<Boolean> f42735v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final MutableLiveData<Boolean> f42736w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final MutableLiveData<List<ChatMember>> f42737x;
    @m8.g

    /* renamed from: y  reason: collision with root package name */
    private final MutableLiveData<Chat> f42738y;

    /* renamed from: z  reason: collision with root package name */
    private int f42739z;

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;", "", "(Ljava/lang/String;I)V", "MAIN_SCREEN", "CHAT_DETAILS", "USER_PROFILE", "CHAT_SELECTOR", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
        MAIN_SCREEN,
        CHAT_DETAILS,
        USER_PROFILE,
        CHAT_SELECTOR
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$addMembers$1", f = "GroupManagerViewModel.kt", i = {}, l = {144}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42741a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List<Integer> f42743c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(List<Integer> list, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f42743c = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f42743c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42741a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.members.a aVar = GroupManagerViewModel.this.f42720g;
                a.C0324a c0324a = new a.C0324a(GroupManagerViewModel.this.O(), this.f42743c);
                this.f42741a = 1;
                if (aVar.a(c0324a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$banUser$1", f = "GroupManagerViewModel.kt", i = {}, l = {120}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42744a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f42746c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i4, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f42746c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f42746c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42744a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.members.b bVar = GroupManagerViewModel.this.f42728o;
                b.a aVar = new b.a(GroupManagerViewModel.this.O(), this.f42746c);
                this.f42744a = 1;
                if (bVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$blockContact$1", f = "GroupManagerViewModel.kt", i = {}, l = {102}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42747a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f42749c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(int i4, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f42749c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(this.f42749c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42747a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.contact.a aVar = GroupManagerViewModel.this.f42724k;
                Integer boxInt = Boxing.boxInt(this.f42749c);
                this.f42747a = 1;
                a10 = aVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            GroupManagerViewModel groupManagerViewModel = GroupManagerViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                groupManagerViewModel.h(b.s.f2218c0, new Object[0]);
            }
            GroupManagerViewModel groupManagerViewModel2 = GroupManagerViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                groupManagerViewModel2.h(b.s.f2373r1, new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$createChat$1", f = "GroupManagerViewModel.kt", i = {}, l = {162}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42750a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f42752c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(int i4, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f42752c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(this.f42752c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((d) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42750a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.c cVar = GroupManagerViewModel.this.f42718e;
                Integer boxInt = Boxing.boxInt(this.f42752c);
                this.f42750a = 1;
                a10 = cVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            GroupManagerViewModel groupManagerViewModel = GroupManagerViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                groupManagerViewModel.e(Directions.CHAT_DETAILS, BundleKt.bundleOf(TuplesKt.to(k4.b.f84734a, Boxing.boxInt(((Number) a10).intValue()))));
            }
            GroupManagerViewModel groupManagerViewModel2 = GroupManagerViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(a10);
            if (m73exceptionOrNullimpl != null) {
                String message = m73exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error";
                }
                groupManagerViewModel2.g(message);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$followContact$1", f = "GroupManagerViewModel.kt", i = {}, l = {96}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42753a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f42755c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(int i4, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f42755c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(this.f42755c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42753a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.contact.b bVar = GroupManagerViewModel.this.f42722i;
                Integer boxInt = Boxing.boxInt(this.f42755c);
                this.f42753a = 1;
                a10 = bVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            GroupManagerViewModel groupManagerViewModel = GroupManagerViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                groupManagerViewModel.h(b.s.f2413v1, new Object[0]);
            }
            GroupManagerViewModel groupManagerViewModel2 = GroupManagerViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                groupManagerViewModel2.h(b.s.f2383s1, new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$giveManagerRights$1", f = "GroupManagerViewModel.kt", i = {}, l = {132}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class f extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42756a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f42758c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(int i4, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f42758c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new f(this.f42758c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((f) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42756a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.members.c cVar = GroupManagerViewModel.this.f42726m;
                c.a aVar = new c.a(GroupManagerViewModel.this.O(), this.f42758c);
                this.f42756a = 1;
                if (cVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$init$1", f = "GroupManagerViewModel.kt", i = {}, l = {84, 87, 92}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class g extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42759a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f42761c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: GroupManagerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/message/Message;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$init$1$1", f = "GroupManagerViewModel.kt", i = {}, l = {85}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends Message>>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f42762a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f42763b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ GroupManagerViewModel f42764c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: GroupManagerViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/message/Message;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$init$1$1$1", f = "GroupManagerViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$g$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0349a extends SuspendLambda implements Function2<List<? extends Message>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f42765a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f42766b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ GroupManagerViewModel f42767c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0349a(GroupManagerViewModel groupManagerViewModel, Continuation<? super C0349a> continuation) {
                    super(2, continuation);
                    this.f42767c = groupManagerViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0349a c0349a = new C0349a(this.f42767c, continuation);
                    c0349a.f42766b = obj;
                    return c0349a;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g List<Message> list, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0349a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f42765a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f42767c.A.setValue((List) this.f42766b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(GroupManagerViewModel groupManagerViewModel, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f42764c = groupManagerViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f42764c, continuation);
                aVar.f42763b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<Message>> result, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f42762a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0349a c0349a = new C0349a(this.f42764c, null);
                    this.f42762a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f42763b).onSuccess(c0349a, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: GroupManagerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/chat/ChatMember;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$init$1$2", f = "GroupManagerViewModel.kt", i = {0}, l = {88, 89}, m = "invokeSuspend", n = {"$this$invoke"}, s = {"L$0"})
        /* loaded from: classes3.dex */
        public static final class b extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends ChatMember>>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f42768a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f42769b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ GroupManagerViewModel f42770c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: GroupManagerViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/chat/ChatMember;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$init$1$2$1", f = "GroupManagerViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<List<? extends ChatMember>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f42771a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f42772b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ GroupManagerViewModel f42773c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(GroupManagerViewModel groupManagerViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f42773c = groupManagerViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f42773c, continuation);
                    aVar.f42772b = obj;
                    return aVar;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g List<ChatMember> list, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f42771a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f42773c.U().setValue((List) this.f42772b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: GroupManagerViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"", "e", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$init$1$2$2", f = "GroupManagerViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$g$b$b  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0350b extends SuspendLambda implements Function2<Throwable, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f42774a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f42775b;

                C0350b(Continuation<? super C0350b> continuation) {
                    super(2, continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0350b c0350b = new C0350b(continuation);
                    c0350b.f42775b = obj;
                    return c0350b;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                public final Object invoke(@m8.h Throwable th, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0350b) create(th, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f42774a == 0) {
                        ResultKt.throwOnFailure(obj);
                        Timber.f93860a.e((Throwable) this.f42775b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(GroupManagerViewModel groupManagerViewModel, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f42770c = groupManagerViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                b bVar = new b(this.f42770c, continuation);
                bVar.f42769b = obj;
                return bVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<ChatMember>> result, @m8.h Continuation<? super Unit> continuation) {
                return ((b) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                com.im.freechat.shared.entities.Result result;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f42768a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    result = (com.im.freechat.shared.entities.Result) this.f42769b;
                    a aVar = new a(this.f42770c, null);
                    this.f42769b = result;
                    this.f42768a = 1;
                    if (result.onSuccess(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    if (i4 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                } else {
                    result = (com.im.freechat.shared.entities.Result) this.f42769b;
                    ResultKt.throwOnFailure(obj);
                }
                C0350b c0350b = new C0350b(null);
                this.f42769b = null;
                this.f42768a = 2;
                if (result.onFailure(c0350b, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: GroupManagerViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/chat/Chat;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$init$1$3", f = "GroupManagerViewModel.kt", i = {}, l = {92}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class c extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends Chat>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f42776a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f42777b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ GroupManagerViewModel f42778c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: GroupManagerViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$init$1$3$1", f = "GroupManagerViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* loaded from: classes3.dex */
            public static final class a extends SuspendLambda implements Function2<Chat, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f42779a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f42780b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ GroupManagerViewModel f42781c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(GroupManagerViewModel groupManagerViewModel, Continuation<? super a> continuation) {
                    super(2, continuation);
                    this.f42781c = groupManagerViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    a aVar = new a(this.f42781c, continuation);
                    aVar.f42780b = obj;
                    return aVar;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.h Chat chat, @m8.h Continuation<? super Unit> continuation) {
                    return ((a) create(chat, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f42779a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f42781c.N().setValue((Chat) this.f42780b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(GroupManagerViewModel groupManagerViewModel, Continuation<? super c> continuation) {
                super(2, continuation);
                this.f42778c = groupManagerViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                c cVar = new c(this.f42778c, continuation);
                cVar.f42777b = obj;
                return cVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<Chat> result, @m8.h Continuation<? super Unit> continuation) {
                return ((c) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f42776a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    a aVar = new a(this.f42778c, null);
                    this.f42776a = 1;
                    if (((com.im.freechat.shared.entities.Result) this.f42777b).onSuccess(aVar, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(int i4, Continuation<? super g> continuation) {
            super(2, continuation);
            this.f42761c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new g(this.f42761c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((g) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0086 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.f42759a
                r2 = 3
                r3 = 2
                r4 = 1
                r5 = 0
                if (r1 == 0) goto L26
                if (r1 == r4) goto L22
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                kotlin.ResultKt.throwOnFailure(r10)
                goto L87
            L16:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L1e:
                kotlin.ResultKt.throwOnFailure(r10)
                goto L6b
            L22:
                kotlin.ResultKt.throwOnFailure(r10)
                goto L4f
            L26:
                kotlin.ResultKt.throwOnFailure(r10)
                com.im.freechat.ui.chat.group_manager.GroupManagerViewModel r10 = com.im.freechat.ui.chat.group_manager.GroupManagerViewModel.this
                int r1 = r9.f42761c
                r10.f0(r1)
                com.im.freechat.ui.chat.group_manager.GroupManagerViewModel r10 = com.im.freechat.ui.chat.group_manager.GroupManagerViewModel.this
                com.im.freechat.domain.usecase.messages.k r10 = com.im.freechat.ui.chat.group_manager.GroupManagerViewModel.C(r10)
                com.im.freechat.domain.usecase.messages.k$a r1 = new com.im.freechat.domain.usecase.messages.k$a
                int r6 = r9.f42761c
                r7 = 0
                r1.<init>(r6, r7)
                com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$g$a r6 = new com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$g$a
                com.im.freechat.ui.chat.group_manager.GroupManagerViewModel r7 = com.im.freechat.ui.chat.group_manager.GroupManagerViewModel.this
                r6.<init>(r7, r5)
                r9.f42759a = r4
                java.lang.Object r10 = r10.c(r1, r6, r9)
                if (r10 != r0) goto L4f
                return r0
            L4f:
                com.im.freechat.ui.chat.group_manager.GroupManagerViewModel r10 = com.im.freechat.ui.chat.group_manager.GroupManagerViewModel.this
                com.im.freechat.domain.usecase.members.h r10 = com.im.freechat.ui.chat.group_manager.GroupManagerViewModel.B(r10)
                int r1 = r9.f42761c
                java.lang.Integer r1 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r1)
                com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$g$b r4 = new com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$g$b
                com.im.freechat.ui.chat.group_manager.GroupManagerViewModel r6 = com.im.freechat.ui.chat.group_manager.GroupManagerViewModel.this
                r4.<init>(r6, r5)
                r9.f42759a = r3
                java.lang.Object r10 = r10.c(r1, r4, r9)
                if (r10 != r0) goto L6b
                return r0
            L6b:
                com.im.freechat.ui.chat.group_manager.GroupManagerViewModel r10 = com.im.freechat.ui.chat.group_manager.GroupManagerViewModel.this
                com.im.freechat.domain.usecase.chat.r r10 = com.im.freechat.ui.chat.group_manager.GroupManagerViewModel.A(r10)
                int r1 = r9.f42761c
                java.lang.Integer r1 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r1)
                com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$g$c r3 = new com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$g$c
                com.im.freechat.ui.chat.group_manager.GroupManagerViewModel r4 = com.im.freechat.ui.chat.group_manager.GroupManagerViewModel.this
                r3.<init>(r4, r5)
                r9.f42759a = r2
                java.lang.Object r10 = r10.c(r1, r3, r9)
                if (r10 != r0) goto L87
                return r0
            L87:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.group_manager.GroupManagerViewModel.g.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$leaveChat$1", f = "GroupManagerViewModel.kt", i = {}, l = {140}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class h extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42782a;

        h(Continuation<? super h> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new h(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((h) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42782a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.e eVar = GroupManagerViewModel.this.f42717d;
                Integer boxInt = Boxing.boxInt(GroupManagerViewModel.this.O());
                this.f42782a = 1;
                a10 = eVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            GroupManagerViewModel groupManagerViewModel = GroupManagerViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                com.im.freechat.base.a.f(groupManagerViewModel, Directions.MAIN_SCREEN, null, 2, null);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$removeManagerRights$1", f = "GroupManagerViewModel.kt", i = {}, l = {136}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class i extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42784a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f42786c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(int i4, Continuation<? super i> continuation) {
            super(2, continuation);
            this.f42786c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new i(this.f42786c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((i) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42784a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.members.f fVar = GroupManagerViewModel.this.f42727n;
                f.a aVar = new f.a(GroupManagerViewModel.this.O(), this.f42786c);
                this.f42784a = 1;
                if (fVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$removeMember$1", f = "GroupManagerViewModel.kt", i = {}, l = {128}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class j extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42787a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f42789c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(int i4, Continuation<? super j> continuation) {
            super(2, continuation);
            this.f42789c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new j(this.f42789c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((j) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42787a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.members.g gVar = GroupManagerViewModel.this.f42721h;
                g.a aVar = new g.a(GroupManagerViewModel.this.O(), this.f42789c);
                this.f42787a = 1;
                if (gVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$setChatPrivacy$1", f = "GroupManagerViewModel.kt", i = {}, l = {152}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class k extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42790a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f42792c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(boolean z9, Continuation<? super k> continuation) {
            super(2, continuation);
            this.f42792c = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new k(this.f42792c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((k) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42790a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.o oVar = GroupManagerViewModel.this.f42732s;
                o.a aVar = new o.a(GroupManagerViewModel.this.O(), this.f42792c);
                this.f42790a = 1;
                a10 = oVar.a(aVar, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            GroupManagerViewModel groupManagerViewModel = GroupManagerViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(a10);
            if (m73exceptionOrNullimpl != null) {
                String message = m73exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error";
                }
                groupManagerViewModel.g(message);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$setShowChatHistory$1", f = "GroupManagerViewModel.kt", i = {}, l = {157}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class l extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42793a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f42795c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(boolean z9, Continuation<? super l> continuation) {
            super(2, continuation);
            this.f42795c = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new l(this.f42795c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((l) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42793a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.p pVar = GroupManagerViewModel.this.f42733t;
                p.a aVar = new p.a(GroupManagerViewModel.this.O(), this.f42795c);
                this.f42793a = 1;
                a10 = pVar.a(aVar, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            GroupManagerViewModel groupManagerViewModel = GroupManagerViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(a10);
            if (m73exceptionOrNullimpl != null) {
                String message = m73exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error";
                }
                groupManagerViewModel.g(message);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$unbanUser$1", f = "GroupManagerViewModel.kt", i = {}, l = {124}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class m extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42796a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f42798c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(int i4, Continuation<? super m> continuation) {
            super(2, continuation);
            this.f42798c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new m(this.f42798c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((m) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42796a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.members.i iVar = GroupManagerViewModel.this.f42729p;
                i.a aVar = new i.a(GroupManagerViewModel.this.O(), this.f42798c);
                this.f42796a = 1;
                if (iVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$unblockContact$1", f = "GroupManagerViewModel.kt", i = {}, l = {114}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class n extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42799a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f42801c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(int i4, Continuation<? super n> continuation) {
            super(2, continuation);
            this.f42801c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new n(this.f42801c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((n) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42799a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.contact.j jVar = GroupManagerViewModel.this.f42725l;
                Integer boxInt = Boxing.boxInt(this.f42801c);
                this.f42799a = 1;
                a10 = jVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            GroupManagerViewModel groupManagerViewModel = GroupManagerViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                groupManagerViewModel.h(b.s.f2324m2, new Object[0]);
            }
            GroupManagerViewModel groupManagerViewModel2 = GroupManagerViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                groupManagerViewModel2.h(b.s.f2393t1, new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$unfollowContact$1", f = "GroupManagerViewModel.kt", i = {}, l = {108}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class o extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42802a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f42804c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(int i4, Continuation<? super o> continuation) {
            super(2, continuation);
            this.f42804c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new o(this.f42804c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((o) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42802a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.contact.f fVar = GroupManagerViewModel.this.f42723j;
                Integer boxInt = Boxing.boxInt(this.f42804c);
                this.f42802a = 1;
                a10 = fVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            GroupManagerViewModel groupManagerViewModel = GroupManagerViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                Unit unit = (Unit) a10;
                groupManagerViewModel.h(b.s.f2344o2, new Object[0]);
            }
            GroupManagerViewModel groupManagerViewModel2 = GroupManagerViewModel.this;
            if (Result.m73exceptionOrNullimpl(a10) != null) {
                groupManagerViewModel2.h(b.s.f2403u1, new Object[0]);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$updateAvatar$1", f = "GroupManagerViewModel.kt", i = {}, l = {168}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class p extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42805a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Uri f42807c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(Uri uri, Continuation<? super p> continuation) {
            super(2, continuation);
            this.f42807c = uri;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new p(this.f42807c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((p) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42805a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.m mVar = GroupManagerViewModel.this.f42731r;
                int O = GroupManagerViewModel.this.O();
                String uri = this.f42807c.toString();
                Intrinsics.checkNotNullExpressionValue(uri, "uri.toString()");
                m.a aVar = new m.a(O, uri);
                this.f42805a = 1;
                a10 = mVar.a(aVar, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            GroupManagerViewModel groupManagerViewModel = GroupManagerViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(a10);
            if (m73exceptionOrNullimpl != null) {
                String message = m73exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error";
                }
                groupManagerViewModel.g(message);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: GroupManagerViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.group_manager.GroupManagerViewModel$updateChatName$1", f = "GroupManagerViewModel.kt", i = {}, l = {148}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class q extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42808a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f42810c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String str, Continuation<? super q> continuation) {
            super(2, continuation);
            this.f42810c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new q(this.f42810c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((q) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42808a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.n nVar = GroupManagerViewModel.this.f42730q;
                n.a aVar = new n.a(GroupManagerViewModel.this.O(), this.f42810c);
                this.f42808a = 1;
                if (nVar.a(aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    public GroupManagerViewModel(@m8.g com.im.freechat.domain.usecase.members.h subscribeChatMembersInteractor, @m8.g com.im.freechat.domain.usecase.chat.e deleteChatByIdInteractor, @m8.g com.im.freechat.domain.usecase.chat.c createSingleChatInteractor, @m8.g com.im.freechat.domain.usecase.chat.r subscribeChatInteractor, @m8.g com.im.freechat.domain.usecase.members.a addMembersInteractor, @m8.g com.im.freechat.domain.usecase.members.g removeMemberFromChatInteractor, @m8.g com.im.freechat.domain.usecase.contact.b followContactInteractor, @m8.g com.im.freechat.domain.usecase.contact.f removeFriendInteractor, @m8.g com.im.freechat.domain.usecase.contact.a blockContactInteractor, @m8.g com.im.freechat.domain.usecase.contact.j unblockContactInteractor, @m8.g com.im.freechat.domain.usecase.members.c giveManagerRightsInteractor, @m8.g com.im.freechat.domain.usecase.members.f removeManagerRightsInteractor, @m8.g com.im.freechat.domain.usecase.members.b banMemberInteractor, @m8.g com.im.freechat.domain.usecase.members.i unbanMemberInteractor, @m8.g com.im.freechat.domain.usecase.chat.n setChatNameInteractor, @m8.g com.im.freechat.domain.usecase.chat.m setChatAvatarInteractor, @m8.g com.im.freechat.domain.usecase.chat.o setChatPrivacyInteractor, @m8.g com.im.freechat.domain.usecase.chat.p setShowChatHistoryInteractor, @m8.g com.im.freechat.domain.usecase.messages.k subscribeChatMessagesInteractor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(subscribeChatMembersInteractor, "subscribeChatMembersInteractor");
        Intrinsics.checkNotNullParameter(deleteChatByIdInteractor, "deleteChatByIdInteractor");
        Intrinsics.checkNotNullParameter(createSingleChatInteractor, "createSingleChatInteractor");
        Intrinsics.checkNotNullParameter(subscribeChatInteractor, "subscribeChatInteractor");
        Intrinsics.checkNotNullParameter(addMembersInteractor, "addMembersInteractor");
        Intrinsics.checkNotNullParameter(removeMemberFromChatInteractor, "removeMemberFromChatInteractor");
        Intrinsics.checkNotNullParameter(followContactInteractor, "followContactInteractor");
        Intrinsics.checkNotNullParameter(removeFriendInteractor, "removeFriendInteractor");
        Intrinsics.checkNotNullParameter(blockContactInteractor, "blockContactInteractor");
        Intrinsics.checkNotNullParameter(unblockContactInteractor, "unblockContactInteractor");
        Intrinsics.checkNotNullParameter(giveManagerRightsInteractor, "giveManagerRightsInteractor");
        Intrinsics.checkNotNullParameter(removeManagerRightsInteractor, "removeManagerRightsInteractor");
        Intrinsics.checkNotNullParameter(banMemberInteractor, "banMemberInteractor");
        Intrinsics.checkNotNullParameter(unbanMemberInteractor, "unbanMemberInteractor");
        Intrinsics.checkNotNullParameter(setChatNameInteractor, "setChatNameInteractor");
        Intrinsics.checkNotNullParameter(setChatAvatarInteractor, "setChatAvatarInteractor");
        Intrinsics.checkNotNullParameter(setChatPrivacyInteractor, "setChatPrivacyInteractor");
        Intrinsics.checkNotNullParameter(setShowChatHistoryInteractor, "setShowChatHistoryInteractor");
        Intrinsics.checkNotNullParameter(subscribeChatMessagesInteractor, "subscribeChatMessagesInteractor");
        this.f42716c = subscribeChatMembersInteractor;
        this.f42717d = deleteChatByIdInteractor;
        this.f42718e = createSingleChatInteractor;
        this.f42719f = subscribeChatInteractor;
        this.f42720g = addMembersInteractor;
        this.f42721h = removeMemberFromChatInteractor;
        this.f42722i = followContactInteractor;
        this.f42723j = removeFriendInteractor;
        this.f42724k = blockContactInteractor;
        this.f42725l = unblockContactInteractor;
        this.f42726m = giveManagerRightsInteractor;
        this.f42727n = removeManagerRightsInteractor;
        this.f42728o = banMemberInteractor;
        this.f42729p = unbanMemberInteractor;
        this.f42730q = setChatNameInteractor;
        this.f42731r = setChatAvatarInteractor;
        this.f42732s = setChatPrivacyInteractor;
        this.f42733t = setShowChatHistoryInteractor;
        this.f42734u = subscribeChatMessagesInteractor;
        Boolean bool = Boolean.FALSE;
        this.f42735v = new MutableLiveData<>(bool);
        this.f42736w = new MutableLiveData<>(bool);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f42737x = new MutableLiveData<>(emptyList);
        this.f42738y = new MutableLiveData<>(null);
        MutableLiveData<List<Message>> mutableLiveData = new MutableLiveData<>();
        this.A = mutableLiveData;
        LiveData<List<com.im.freechat.ui.chat.history.a>> map = Transformations.map(mutableLiveData, t.f42838a);
        Intrinsics.checkNotNullExpressionValue(map, "map(messages) { list ->\n…nt) }\n            }\n    }");
        this.B = map;
        LiveData<List<com.im.freechat.ui.chat.history.a>> map2 = Transformations.map(mutableLiveData, v.f42840a);
        Intrinsics.checkNotNullExpressionValue(map2, "map(messages) { list ->\n…atId, it.content) }\n    }");
        this.C = map2;
        LiveData<List<com.im.freechat.ui.chat.history.a>> map3 = Transformations.map(mutableLiveData, u.f42839a);
        Intrinsics.checkNotNullExpressionValue(map3, "map(messages) { list ->\n…atId, it.content) }\n    }");
        this.D = map3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List K(List list) {
        int collectionSizeOrDefault;
        Object first;
        Intrinsics.checkNotNullExpressionValue(list, "list");
        ArrayList<Message> arrayList = new ArrayList();
        for (Object obj : list) {
            if (com.im.freechat.extend.p.q((Message) obj)) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (Message message : arrayList) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) message.getAttachments());
            arrayList2.add(new com.im.freechat.ui.chat.history.a((Attachment) first, message.getSender(), message.getSendTime(), message.getChatId(), message.getContent()));
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List b0(List list) {
        int collectionSizeOrDefault;
        List<String> m9;
        Intrinsics.checkNotNullExpressionValue(list, "list");
        ArrayList<Message> arrayList = new ArrayList();
        for (Object obj : list) {
            Message message = (Message) obj;
            boolean z9 = false;
            if (com.im.freechat.extend.p.A(message)) {
                String content = message.getContent();
                if ((content == null || (m9 = com.im.freechat.extend.p.m(content)) == null || !(m9.isEmpty() ^ true)) ? false : true) {
                    z9 = true;
                }
            }
            if (z9) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (Message message2 : arrayList) {
            arrayList2.add(new com.im.freechat.ui.chat.history.a(null, message2.getSender(), message2.getSendTime(), message2.getChatId(), message2.getContent()));
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List c0(List list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullExpressionValue(list, "list");
        ArrayList<Message> arrayList = new ArrayList();
        for (Object obj : list) {
            Message message = (Message) obj;
            if (com.im.freechat.extend.p.v(message) || com.im.freechat.extend.p.p(message) || com.im.freechat.extend.p.s(message)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Message message2 : arrayList) {
            List<Attachment> attachments = message2.getAttachments();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(attachments, 10);
            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
            for (Attachment attachment : attachments) {
                arrayList3.add(new com.im.freechat.ui.chat.history.a(attachment, message2.getSender(), message2.getSendTime(), message2.getChatId(), message2.getContent()));
            }
            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, arrayList3);
        }
        return arrayList2;
    }

    public final void F(@m8.g List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        d(this.f42735v, new a(list, null));
    }

    public final void G(int i4) {
        d(this.f42735v, new b(i4, null));
    }

    public final void H(int i4) {
        d(this.f42735v, new c(i4, null));
    }

    public final boolean I(@m8.g UserModel contact) {
        boolean z9;
        Intrinsics.checkNotNullParameter(contact, "contact");
        List<ChatMember> value = this.f42737x.getValue();
        Object obj = null;
        if (value != null) {
            Iterator<T> it = value.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((ChatMember) next).getContact().getUserId() == contact.getUserId()) {
                    z9 = true;
                    continue;
                } else {
                    z9 = false;
                    continue;
                }
                if (z9) {
                    obj = next;
                    break;
                }
            }
            obj = (ChatMember) obj;
        }
        return obj != null;
    }

    public final void J(int i4) {
        d(this.f42735v, new d(i4, null));
    }

    public final void L(int i4) {
        d(this.f42735v, new e(i4, null));
    }

    @m8.g
    public final MutableLiveData<Boolean> M() {
        return this.f42736w;
    }

    @m8.g
    public final MutableLiveData<Chat> N() {
        return this.f42738y;
    }

    public final int O() {
        return this.f42739z;
    }

    @m8.h
    public final ChatMember.Role P() {
        Object obj;
        List<ChatMember> value = this.f42737x.getValue();
        if (value != null) {
            Iterator<T> it = value.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((ChatMember) obj).getContact().isCurrentUser()) {
                    break;
                }
            }
            ChatMember chatMember = (ChatMember) obj;
            if (chatMember != null) {
                return chatMember.getRole();
            }
            return null;
        }
        return null;
    }

    @m8.g
    public final LiveData<List<com.im.freechat.ui.chat.history.a>> Q() {
        return this.D;
    }

    @m8.g
    public final LiveData<List<com.im.freechat.ui.chat.history.a>> R() {
        return this.C;
    }

    @m8.g
    public final MutableLiveData<Boolean> S() {
        return this.f42735v;
    }

    @m8.g
    public final LiveData<List<com.im.freechat.ui.chat.history.a>> T() {
        return this.B;
    }

    @m8.g
    public final MutableLiveData<List<ChatMember>> U() {
        return this.f42737x;
    }

    public final boolean V() {
        Chat value = this.f42738y.getValue();
        return value != null && value.getShowHistoryToNewMembers() == 1;
    }

    public final void W(int i4) {
        d(this.f42735v, new f(i4, null));
    }

    public final void X(int i4) {
        d(this.f42735v, new g(i4, null));
    }

    public final boolean Y() {
        ChatMember.Role P = P();
        return P != null && P.isGroupAdmin();
    }

    public final boolean Z() {
        Chat value = this.f42738y.getValue();
        return value != null && value.isPublic() == 1;
    }

    public final void a0() {
        d(this.f42735v, new h(null));
    }

    public final void d0(int i4) {
        d(this.f42735v, new i(i4, null));
    }

    public final void e0(int i4) {
        d(this.f42735v, new j(i4, null));
    }

    public final void f0(int i4) {
        this.f42739z = i4;
    }

    public final void g0(boolean z9) {
        d(this.f42735v, new k(z9, null));
    }

    public final void h0(boolean z9) {
        d(this.f42735v, new l(z9, null));
    }

    public final void i0(int i4) {
        d(this.f42735v, new m(i4, null));
    }

    public final void j0(int i4) {
        d(this.f42735v, new n(i4, null));
    }

    public final void k0(int i4) {
        d(this.f42735v, new o(i4, null));
    }

    public final void l0(@m8.g Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        d(this.f42736w, new p(uri, null));
    }

    public final void m0(@m8.g String newName) {
        Intrinsics.checkNotNullParameter(newName, "newName");
        d(this.f42735v, new q(newName, null));
    }
}
