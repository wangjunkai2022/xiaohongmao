.class public final Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;
.super Lcom/im/freechat/base/a;
.source "GroupManagerViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/a<",
        "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupManagerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupManagerViewModel.kt\ncom/im/freechat/ui/chat/group_manager/GroupManagerViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n1#2:177\n766#3:178\n857#3,2:179\n1360#3:181\n1446#3,2:182\n1549#3:184\n1620#3,3:185\n1448#3,3:188\n766#3:191\n857#3,2:192\n1549#3:194\n1620#3,3:195\n766#3:198\n857#3,2:199\n1549#3:201\n1620#3,3:202\n*S KotlinDebug\n*F\n+ 1 GroupManagerViewModel.kt\ncom/im/freechat/ui/chat/group_manager/GroupManagerViewModel\n*L\n64#1:178\n64#1:179,2\n65#1:181\n65#1:182,2\n66#1:184\n66#1:185,3\n65#1:188,3\n70#1:191\n70#1:192,2\n71#1:194\n71#1:195,3\n74#1:198\n74#1:199,2\n75#1:201\n75#1:202,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u008a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u00a5\u0001B\u00a1\u0001\u0012\u0006\u0010(\u001a\u00020%\u0012\u0006\u0010,\u001a\u00020)\u0012\u0006\u00100\u001a\u00020-\u0012\u0006\u00104\u001a\u000201\u0012\u0006\u00108\u001a\u000205\u0012\u0006\u0010<\u001a\u000209\u0012\u0006\u0010@\u001a\u00020=\u0012\u0006\u0010D\u001a\u00020A\u0012\u0006\u0010H\u001a\u00020E\u0012\u0006\u0010L\u001a\u00020I\u0012\u0006\u0010P\u001a\u00020M\u0012\u0006\u0010T\u001a\u00020Q\u0012\u0006\u0010X\u001a\u00020U\u0012\u0006\u0010\\\u001a\u00020Y\u0012\u0006\u0010`\u001a\u00020]\u0012\u0006\u0010d\u001a\u00020a\u0012\u0006\u0010h\u001a\u00020e\u0012\u0006\u0010l\u001a\u00020i\u0012\u0006\u0010p\u001a\u00020m\u00a2\u0006\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\tJ\u0014\u0010\u0019\u001a\u00020\t2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0017J\u000e\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001aJ\u000e\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u0005J\u000e\u0010 \u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u0005J\u000e\u0010!\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010$\u001a\u00020\t2\u0006\u0010#\u001a\u00020\"R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0014\u0010@\u001a\u00020=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0014\u0010P\u001a\u00020M8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0014\u0010T\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0014\u0010X\u001a\u00020U8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0014\u0010\\\u001a\u00020Y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0014\u0010`\u001a\u00020]8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0014\u0010d\u001a\u00020a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0014\u0010h\u001a\u00020e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0014\u0010l\u001a\u00020i8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0014\u0010p\u001a\u00020m8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008n\u0010oR%\u0010w\u001a\u0010\u0012\u000c\u0012\n r*\u0004\u0018\u00010\u00050\u00050q8\u0006\u00a2\u0006\u000c\n\u0004\u0008s\u0010t\u001a\u0004\u0008u\u0010vR%\u0010z\u001a\u0010\u0012\u000c\u0012\n r*\u0004\u0018\u00010\u00050\u00050q8\u0006\u00a2\u0006\u000c\n\u0004\u0008x\u0010t\u001a\u0004\u0008y\u0010vR#\u0010~\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020{0\u00170q8\u0006\u00a2\u0006\u000c\n\u0004\u0008|\u0010t\u001a\u0004\u0008}\u0010vR \u0010\u0082\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u007f0q8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0080\u0001\u0010t\u001a\u0005\u0008\u0081\u0001\u0010vR\'\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0083\u0001\u0010\u0006\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001\"\u0006\u0008\u0086\u0001\u0010\u0087\u0001R#\u0010\u008a\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0088\u00010\u00170q8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0089\u0001\u0010tR9\u0010\u0091\u0001\u001a\u001f\u0012\u001a\u0012\u0018\u0012\u0005\u0012\u00030\u008c\u0001 r*\u000b\u0012\u0005\u0012\u00030\u008c\u0001\u0018\u00010\u00170\u00170\u008b\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u008d\u0001\u0010\u008e\u0001\u001a\u0006\u0008\u008f\u0001\u0010\u0090\u0001R9\u0010\u0094\u0001\u001a\u001f\u0012\u001a\u0012\u0018\u0012\u0005\u0012\u00030\u008c\u0001 r*\u000b\u0012\u0005\u0012\u00030\u008c\u0001\u0018\u00010\u00170\u00170\u008b\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0092\u0001\u0010\u008e\u0001\u001a\u0006\u0008\u0093\u0001\u0010\u0090\u0001R9\u0010\u0097\u0001\u001a\u001f\u0012\u001a\u0012\u0018\u0012\u0005\u0012\u00030\u008c\u0001 r*\u000b\u0012\u0005\u0012\u00030\u008c\u0001\u0018\u00010\u00170\u00170\u008b\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0095\u0001\u0010\u008e\u0001\u001a\u0006\u0008\u0096\u0001\u0010\u0090\u0001R\u0017\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0098\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\u0014\u0010\u009e\u0001\u001a\u00020\u00058F\u00a2\u0006\u0008\u001a\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u0014\u0010\u00a0\u0001\u001a\u00020\u00058F\u00a2\u0006\u0008\u001a\u0006\u0008\u009f\u0001\u0010\u009d\u0001R\u0014\u0010\u00a2\u0001\u001a\u00020\u00058F\u00a2\u0006\u0008\u001a\u0006\u0008\u00a1\u0001\u0010\u009d\u0001\u00a8\u0006\u00a6\u0001"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;",
        "Lcom/im/freechat/base/a;",
        "Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$Directions;",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "contact",
        "",
        "I",
        "",
        "chatId",
        "",
        "X",
        "contactId",
        "L",
        "H",
        "k0",
        "j0",
        "userId",
        "G",
        "i0",
        "e0",
        "W",
        "d0",
        "a0",
        "",
        "list",
        "F",
        "",
        "newName",
        "m0",
        "isPublic",
        "g0",
        "show",
        "h0",
        "J",
        "Landroid/net/Uri;",
        "uri",
        "l0",
        "Lcom/im/freechat/domain/usecase/members/h;",
        "c",
        "Lcom/im/freechat/domain/usecase/members/h;",
        "subscribeChatMembersInteractor",
        "Lcom/im/freechat/domain/usecase/chat/e;",
        "d",
        "Lcom/im/freechat/domain/usecase/chat/e;",
        "deleteChatByIdInteractor",
        "Lcom/im/freechat/domain/usecase/chat/c;",
        "e",
        "Lcom/im/freechat/domain/usecase/chat/c;",
        "createSingleChatInteractor",
        "Lcom/im/freechat/domain/usecase/chat/r;",
        "f",
        "Lcom/im/freechat/domain/usecase/chat/r;",
        "subscribeChatInteractor",
        "Lcom/im/freechat/domain/usecase/members/a;",
        "g",
        "Lcom/im/freechat/domain/usecase/members/a;",
        "addMembersInteractor",
        "Lcom/im/freechat/domain/usecase/members/g;",
        "h",
        "Lcom/im/freechat/domain/usecase/members/g;",
        "removeMemberFromChatInteractor",
        "Lcom/im/freechat/domain/usecase/contact/b;",
        "i",
        "Lcom/im/freechat/domain/usecase/contact/b;",
        "followContactInteractor",
        "Lcom/im/freechat/domain/usecase/contact/f;",
        "j",
        "Lcom/im/freechat/domain/usecase/contact/f;",
        "removeFriendInteractor",
        "Lcom/im/freechat/domain/usecase/contact/a;",
        "k",
        "Lcom/im/freechat/domain/usecase/contact/a;",
        "blockContactInteractor",
        "Lcom/im/freechat/domain/usecase/contact/j;",
        "l",
        "Lcom/im/freechat/domain/usecase/contact/j;",
        "unblockContactInteractor",
        "Lcom/im/freechat/domain/usecase/members/c;",
        "m",
        "Lcom/im/freechat/domain/usecase/members/c;",
        "giveManagerRightsInteractor",
        "Lcom/im/freechat/domain/usecase/members/f;",
        "n",
        "Lcom/im/freechat/domain/usecase/members/f;",
        "removeManagerRightsInteractor",
        "Lcom/im/freechat/domain/usecase/members/b;",
        "o",
        "Lcom/im/freechat/domain/usecase/members/b;",
        "banMemberInteractor",
        "Lcom/im/freechat/domain/usecase/members/i;",
        "p",
        "Lcom/im/freechat/domain/usecase/members/i;",
        "unbanMemberInteractor",
        "Lcom/im/freechat/domain/usecase/chat/n;",
        "q",
        "Lcom/im/freechat/domain/usecase/chat/n;",
        "setChatNameInteractor",
        "Lcom/im/freechat/domain/usecase/chat/m;",
        "r",
        "Lcom/im/freechat/domain/usecase/chat/m;",
        "setChatAvatarInteractor",
        "Lcom/im/freechat/domain/usecase/chat/o;",
        "s",
        "Lcom/im/freechat/domain/usecase/chat/o;",
        "setChatPrivacyInteractor",
        "Lcom/im/freechat/domain/usecase/chat/p;",
        "t",
        "Lcom/im/freechat/domain/usecase/chat/p;",
        "setShowChatHistoryInteractor",
        "Lcom/im/freechat/domain/usecase/messages/k;",
        "u",
        "Lcom/im/freechat/domain/usecase/messages/k;",
        "subscribeChatMessagesInteractor",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "v",
        "Landroidx/lifecycle/MutableLiveData;",
        "S",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loading",
        "w",
        "M",
        "avatarLoading",
        "Lcom/im/freechat/shared/entities/chat/ChatMember;",
        "x",
        "U",
        "membersList",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "y",
        "N",
        "chat",
        "z",
        "O",
        "()I",
        "f0",
        "(I)V",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "A",
        "messages",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/im/freechat/ui/chat/history/a;",
        "B",
        "Landroidx/lifecycle/LiveData;",
        "T",
        "()Landroidx/lifecycle/LiveData;",
        "media",
        "C",
        "R",
        "links",
        "D",
        "Q",
        "files",
        "Lcom/im/freechat/shared/entities/chat/ChatMember$Role;",
        "P",
        "()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;",
        "currentRole",
        "Y",
        "()Z",
        "isAdmin",
        "Z",
        "isChatPublic",
        "V",
        "showChatHistory",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/members/h;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/chat/c;Lcom/im/freechat/domain/usecase/chat/r;Lcom/im/freechat/domain/usecase/members/a;Lcom/im/freechat/domain/usecase/members/g;Lcom/im/freechat/domain/usecase/contact/b;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/a;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/usecase/members/c;Lcom/im/freechat/domain/usecase/members/f;Lcom/im/freechat/domain/usecase/members/b;Lcom/im/freechat/domain/usecase/members/i;Lcom/im/freechat/domain/usecase/chat/n;Lcom/im/freechat/domain/usecase/chat/m;Lcom/im/freechat/domain/usecase/chat/o;Lcom/im/freechat/domain/usecase/chat/p;Lcom/im/freechat/domain/usecase/messages/k;)V",
        "Directions",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final A:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final B:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/history/a;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final C:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/history/a;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final D:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/history/a;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/domain/usecase/members/h;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/domain/usecase/chat/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lcom/im/freechat/domain/usecase/chat/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/im/freechat/domain/usecase/chat/r;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/im/freechat/domain/usecase/members/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lcom/im/freechat/domain/usecase/members/g;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lcom/im/freechat/domain/usecase/contact/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Lcom/im/freechat/domain/usecase/contact/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Lcom/im/freechat/domain/usecase/contact/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final l:Lcom/im/freechat/domain/usecase/contact/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final m:Lcom/im/freechat/domain/usecase/members/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final n:Lcom/im/freechat/domain/usecase/members/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final o:Lcom/im/freechat/domain/usecase/members/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final p:Lcom/im/freechat/domain/usecase/members/i;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final q:Lcom/im/freechat/domain/usecase/chat/n;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final r:Lcom/im/freechat/domain/usecase/chat/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final s:Lcom/im/freechat/domain/usecase/chat/o;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final t:Lcom/im/freechat/domain/usecase/chat/p;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final u:Lcom/im/freechat/domain/usecase/messages/k;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final v:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final w:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final x:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/ChatMember;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final y:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private z:I


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/usecase/members/h;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/chat/c;Lcom/im/freechat/domain/usecase/chat/r;Lcom/im/freechat/domain/usecase/members/a;Lcom/im/freechat/domain/usecase/members/g;Lcom/im/freechat/domain/usecase/contact/b;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/a;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/usecase/members/c;Lcom/im/freechat/domain/usecase/members/f;Lcom/im/freechat/domain/usecase/members/b;Lcom/im/freechat/domain/usecase/members/i;Lcom/im/freechat/domain/usecase/chat/n;Lcom/im/freechat/domain/usecase/chat/m;Lcom/im/freechat/domain/usecase/chat/o;Lcom/im/freechat/domain/usecase/chat/p;Lcom/im/freechat/domain/usecase/messages/k;)V
    .locals 16
    .param p1    # Lcom/im/freechat/domain/usecase/members/h;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/usecase/chat/e;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/usecase/chat/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/domain/usecase/chat/r;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/domain/usecase/members/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/im/freechat/domain/usecase/members/g;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Lcom/im/freechat/domain/usecase/contact/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p8    # Lcom/im/freechat/domain/usecase/contact/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p9    # Lcom/im/freechat/domain/usecase/contact/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p10    # Lcom/im/freechat/domain/usecase/contact/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p11    # Lcom/im/freechat/domain/usecase/members/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p12    # Lcom/im/freechat/domain/usecase/members/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p13    # Lcom/im/freechat/domain/usecase/members/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p14    # Lcom/im/freechat/domain/usecase/members/i;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p15    # Lcom/im/freechat/domain/usecase/chat/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p16    # Lcom/im/freechat/domain/usecase/chat/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p17    # Lcom/im/freechat/domain/usecase/chat/o;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p18    # Lcom/im/freechat/domain/usecase/chat/p;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p19    # Lcom/im/freechat/domain/usecase/messages/k;
        .annotation build Lm8/g;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "subscribeChatMembersInteractor"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteChatByIdInteractor"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createSingleChatInteractor"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscribeChatInteractor"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addMembersInteractor"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeMemberFromChatInteractor"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followContactInteractor"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeFriendInteractor"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockContactInteractor"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unblockContactInteractor"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "giveManagerRightsInteractor"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeManagerRightsInteractor"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "banMemberInteractor"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unbanMemberInteractor"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setChatNameInteractor"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setChatAvatarInteractor"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setChatPrivacyInteractor"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setShowChatHistoryInteractor"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscribeChatMessagesInteractor"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/im/freechat/base/a;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 2
    iput-object v1, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->c:Lcom/im/freechat/domain/usecase/members/h;

    .line 3
    iput-object v2, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->d:Lcom/im/freechat/domain/usecase/chat/e;

    .line 4
    iput-object v3, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->e:Lcom/im/freechat/domain/usecase/chat/c;

    .line 5
    iput-object v4, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->f:Lcom/im/freechat/domain/usecase/chat/r;

    .line 6
    iput-object v5, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->g:Lcom/im/freechat/domain/usecase/members/a;

    .line 7
    iput-object v6, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->h:Lcom/im/freechat/domain/usecase/members/g;

    .line 8
    iput-object v7, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->i:Lcom/im/freechat/domain/usecase/contact/b;

    .line 9
    iput-object v8, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->j:Lcom/im/freechat/domain/usecase/contact/f;

    .line 10
    iput-object v9, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->k:Lcom/im/freechat/domain/usecase/contact/a;

    .line 11
    iput-object v10, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->l:Lcom/im/freechat/domain/usecase/contact/j;

    .line 12
    iput-object v11, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->m:Lcom/im/freechat/domain/usecase/members/c;

    .line 13
    iput-object v12, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->n:Lcom/im/freechat/domain/usecase/members/f;

    .line 14
    iput-object v13, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->o:Lcom/im/freechat/domain/usecase/members/b;

    .line 15
    iput-object v14, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->p:Lcom/im/freechat/domain/usecase/members/i;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->q:Lcom/im/freechat/domain/usecase/chat/n;

    .line 17
    iput-object v15, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->r:Lcom/im/freechat/domain/usecase/chat/m;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 18
    iput-object v1, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->s:Lcom/im/freechat/domain/usecase/chat/o;

    .line 19
    iput-object v2, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->t:Lcom/im/freechat/domain/usecase/chat/p;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->u:Lcom/im/freechat/domain/usecase/messages/k;

    .line 21
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    .line 22
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 23
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 24
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 26
    sget-object v2, Lcom/im/freechat/ui/chat/group_manager/t;->a:Lcom/im/freechat/ui/chat/group_manager/t;

    invoke-static {v1, v2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    const-string v3, "map(messages) { list ->\n\u2026nt) }\n            }\n    }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->B:Landroidx/lifecycle/LiveData;

    .line 27
    sget-object v2, Lcom/im/freechat/ui/chat/group_manager/v;->a:Lcom/im/freechat/ui/chat/group_manager/v;

    invoke-static {v1, v2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    const-string v3, "map(messages) { list ->\n\u2026atId, it.content) }\n    }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->C:Landroidx/lifecycle/LiveData;

    .line 28
    sget-object v2, Lcom/im/freechat/ui/chat/group_manager/u;->a:Lcom/im/freechat/ui/chat/group_manager/u;

    invoke-static {v1, v2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->D:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic A(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/chat/r;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->f:Lcom/im/freechat/domain/usecase/chat/r;

    return-object p0
.end method

.method public static final synthetic B(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/members/h;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->c:Lcom/im/freechat/domain/usecase/members/h;

    return-object p0
.end method

.method public static final synthetic C(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/messages/k;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->u:Lcom/im/freechat/domain/usecase/messages/k;

    return-object p0
.end method

.method public static final synthetic D(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/members/i;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->p:Lcom/im/freechat/domain/usecase/members/i;

    return-object p0
.end method

.method public static final synthetic E(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/contact/j;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->l:Lcom/im/freechat/domain/usecase/contact/j;

    return-object p0
.end method

.method private static final K(Ljava/util/List;)Ljava/util/List;
    .locals 10

    const-string v0, "list"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/shared/entities/message/Message;

    .line 4
    invoke-static {v2}, Lcom/im/freechat/extend/p;->q(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/im/freechat/shared/entities/message/Message;

    .line 8
    new-instance v9, Lcom/im/freechat/ui/chat/history/a;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/im/freechat/shared/entities/message/Attachment;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v4

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v7

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getContent()Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/im/freechat/ui/chat/history/a;-><init>(Lcom/im/freechat/shared/entities/message/Attachment;Lcom/im/freechat/shared/entities/contact/Sender;JILjava/lang/String;)V

    invoke-interface {p0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method private static final b0(Ljava/util/List;)Ljava/util/List;
    .locals 10

    const-string v0, "list"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/shared/entities/message/Message;

    .line 4
    invoke-static {v2}, Lcom/im/freechat/extend/p;->A(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/message/Message;->getContent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/im/freechat/extend/p;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v5

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/im/freechat/shared/entities/message/Message;

    .line 8
    new-instance v9, Lcom/im/freechat/ui/chat/history/a;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v4

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v7

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getContent()Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/im/freechat/ui/chat/history/a;-><init>(Lcom/im/freechat/shared/entities/message/Attachment;Lcom/im/freechat/shared/entities/contact/Sender;JILjava/lang/String;)V

    invoke-interface {p0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method private static final c0(Ljava/util/List;)Ljava/util/List;
    .locals 12

    const-string v0, "list"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/im/freechat/shared/entities/message/Message;

    .line 4
    invoke-static {v2}, Lcom/im/freechat/extend/p;->v(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/im/freechat/extend/p;->p(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/im/freechat/extend/p;->s(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/im/freechat/shared/entities/message/Message;

    .line 8
    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getAttachments()Ljava/util/List;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    move-object v6, v4

    check-cast v6, Lcom/im/freechat/shared/entities/message/Attachment;

    .line 12
    new-instance v4, Lcom/im/freechat/ui/chat/history/a;

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v7

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getSendTime()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v10

    invoke-virtual {v1}, Lcom/im/freechat/shared/entities/message/Message;->getContent()Ljava/lang/String;

    move-result-object v11

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/im/freechat/ui/chat/history/a;-><init>(Lcom/im/freechat/shared/entities/message/Attachment;Lcom/im/freechat/shared/entities/contact/Sender;JILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 13
    :cond_4
    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    :cond_5
    return-object p0
.end method

.method public static synthetic i(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->c0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->K(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->b0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/members/a;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->g:Lcom/im/freechat/domain/usecase/members/a;

    return-object p0
.end method

.method public static final synthetic m(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/members/b;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->o:Lcom/im/freechat/domain/usecase/members/b;

    return-object p0
.end method

.method public static final synthetic n(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/contact/a;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->k:Lcom/im/freechat/domain/usecase/contact/a;

    return-object p0
.end method

.method public static final synthetic o(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/chat/c;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->e:Lcom/im/freechat/domain/usecase/chat/c;

    return-object p0
.end method

.method public static final synthetic p(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/chat/e;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->d:Lcom/im/freechat/domain/usecase/chat/e;

    return-object p0
.end method

.method public static final synthetic q(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/contact/b;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->i:Lcom/im/freechat/domain/usecase/contact/b;

    return-object p0
.end method

.method public static final synthetic r(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/members/c;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->m:Lcom/im/freechat/domain/usecase/members/c;

    return-object p0
.end method

.method public static final synthetic s(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic t(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/contact/f;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->j:Lcom/im/freechat/domain/usecase/contact/f;

    return-object p0
.end method

.method public static final synthetic u(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/members/f;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->n:Lcom/im/freechat/domain/usecase/members/f;

    return-object p0
.end method

.method public static final synthetic v(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/members/g;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->h:Lcom/im/freechat/domain/usecase/members/g;

    return-object p0
.end method

.method public static final synthetic w(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/chat/m;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->r:Lcom/im/freechat/domain/usecase/chat/m;

    return-object p0
.end method

.method public static final synthetic x(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/chat/n;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->q:Lcom/im/freechat/domain/usecase/chat/n;

    return-object p0
.end method

.method public static final synthetic y(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/chat/o;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->s:Lcom/im/freechat/domain/usecase/chat/o;

    return-object p0
.end method

.method public static final synthetic z(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;)Lcom/im/freechat/domain/usecase/chat/p;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->t:Lcom/im/freechat/domain/usecase/chat/p;

    return-object p0
.end method


# virtual methods
.method public final F(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$a;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final G(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$b;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final H(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$c;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final I(Lcom/im/freechat/shared/entities/contact/UserModel;)Z
    .locals 7
    .param p1    # Lcom/im/freechat/shared/entities/contact/UserModel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/im/freechat/shared/entities/chat/ChatMember;

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v5

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_0

    move-object v3, v4

    :cond_2
    check-cast v3, Lcom/im/freechat/shared/entities/chat/ChatMember;

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final J(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$d;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final L(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$e;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final N()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final O()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->z:I

    return v0
.end method

.method public final P()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;
    .locals 4
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/im/freechat/shared/entities/chat/ChatMember;

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getContact()Lcom/im/freechat/shared/entities/contact/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/im/freechat/shared/entities/contact/UserModel;->isCurrentUser()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/im/freechat/shared/entities/chat/ChatMember;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/im/freechat/shared/entities/chat/ChatMember;->getRole()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final Q()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/history/a;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->D:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final R()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/history/a;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->C:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final S()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final T()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/history/a;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->B:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final U()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/ChatMember;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final V()Z
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/chat/Chat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/Chat;->getShowHistoryToNewMembers()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final W(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$f;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final X(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$g;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final Y()Z
    .locals 3

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->P()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/ChatMember$Role;->isGroupAdmin()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final Z()Z
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/chat/Chat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/chat/Chat;->isPublic()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final a0()V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$h;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final d0(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$i;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final e0(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$j;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final f0(I)V
    .locals 0

    iput p1, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->z:I

    return-void
.end method

.method public final g0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$k;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ZLkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final h0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$l;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ZLkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final i0(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$m;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final j0(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$n;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final k0(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$o;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final l0(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$p;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final m0(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "newName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel$q;-><init>(Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
