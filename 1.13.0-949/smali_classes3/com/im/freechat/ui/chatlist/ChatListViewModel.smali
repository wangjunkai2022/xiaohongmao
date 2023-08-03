.class public final Lcom/im/freechat/ui/chatlist/ChatListViewModel;
.super Lcom/im/freechat/base/a;
.source "ChatListViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;,
        Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/a<",
        "Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatListViewModel.kt\ncom/im/freechat/ui/chatlist/ChatListViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n1549#2:163\n1620#2,3:164\n1603#2,9:167\n1851#2:176\n288#2,2:177\n1852#2:180\n1612#2:181\n1#3:179\n1#3:182\n*S KotlinDebug\n*F\n+ 1 ChatListViewModel.kt\ncom/im/freechat/ui/chatlist/ChatListViewModel\n*L\n116#1:163\n116#1:164,3\n35#1:167,9\n35#1:176\n36#1:177,2\n35#1:180\n35#1:181\n35#1:179\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0010$\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002_`BG\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010-\u001a\u00020*\u0012\u0006\u00101\u001a\u00020.\u0012\u0006\u00105\u001a\u000202\u00a2\u0006\u0004\u0008]\u0010^J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J(\u0010\u000b\u001a\u00020\n2\u001e\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u00070\u0005H\u0002J\u0006\u0010\u000c\u001a\u00020\u0003J\u000e\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\nJ\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0013R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R%\u0010=\u001a\u0010\u0012\u000c\u0012\n 8*\u0004\u0018\u00010707068\u0006\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<R,\u0010@\u001a\u001a\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00080\u00070\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R.\u0010C\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0013 8*\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010A0A068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010:R%\u0010G\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020D\u0018\u00010A068\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u0010:\u001a\u0004\u0008F\u0010<R\"\u0010K\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010A0H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR%\u0010O\u001a\u0010\u0012\u000c\u0012\n 8*\u0004\u0018\u00010L0L068\u0006\u00a2\u0006\u000c\n\u0004\u0008M\u0010:\u001a\u0004\u0008N\u0010<R#\u0010U\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130A0P8\u0006\u00a2\u0006\u000c\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010TR#\u0010Y\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020V0A068\u0006\u00a2\u0006\u000c\n\u0004\u0008W\u0010:\u001a\u0004\u0008X\u0010<R\u0011\u0010\\\u001a\u00020L8F\u00a2\u0006\u0006\u001a\u0004\u0008Z\u0010[\u00a8\u0006a"
    }
    d2 = {
        "Lcom/im/freechat/ui/chatlist/ChatListViewModel;",
        "Lcom/im/freechat/base/a;",
        "Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;",
        "Lkotlinx/coroutines/j2;",
        "J",
        "",
        "",
        "",
        "",
        "map",
        "",
        "M",
        "K",
        "chatId",
        "w",
        "",
        "searchQuery",
        "I",
        "x",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "chat",
        "L",
        "Lcom/im/freechat/domain/usecase/chat/g;",
        "c",
        "Lcom/im/freechat/domain/usecase/chat/g;",
        "listenAllChatsInteractor",
        "Lcom/im/freechat/domain/usecase/chat/e;",
        "d",
        "Lcom/im/freechat/domain/usecase/chat/e;",
        "deleteChatByIdInteractor",
        "Lcom/im/freechat/domain/usecase/chat/j;",
        "e",
        "Lcom/im/freechat/domain/usecase/chat/j;",
        "listenTypingInteractor",
        "Lcom/im/freechat/domain/usecase/chat/k;",
        "f",
        "Lcom/im/freechat/domain/usecase/chat/k;",
        "pinChatInteractor",
        "Lcom/im/freechat/domain/usecase/messages/h;",
        "g",
        "Lcom/im/freechat/domain/usecase/messages/h;",
        "searchMessagesInteractor",
        "Lcom/im/freechat/domain/usecase/chat/s;",
        "h",
        "Lcom/im/freechat/domain/usecase/chat/s;",
        "subscribeChatSyncStateInteractor",
        "Lcom/im/freechat/domain/usecase/auth/e;",
        "i",
        "Lcom/im/freechat/domain/usecase/auth/e;",
        "listenConnectionStateInteractor",
        "Lcom/im/freechat/domain/usecase/auth/c;",
        "j",
        "Lcom/im/freechat/domain/usecase/auth/c;",
        "getBannerListInteractor",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;",
        "kotlin.jvm.PlatformType",
        "k",
        "Landroidx/lifecycle/MutableLiveData;",
        "C",
        "()Landroidx/lifecycle/MutableLiveData;",
        "networkState",
        "l",
        "Ljava/util/Map;",
        "typingMap",
        "",
        "m",
        "chatList",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "n",
        "D",
        "searchMessagesList",
        "Landroidx/lifecycle/LiveData;",
        "o",
        "Landroidx/lifecycle/LiveData;",
        "searchList",
        "",
        "p",
        "B",
        "loading",
        "Landroidx/lifecycle/MediatorLiveData;",
        "q",
        "Landroidx/lifecycle/MediatorLiveData;",
        "A",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "listToDisplay",
        "Lcom/im/freechat/shared/entities/banner/Banner;",
        "r",
        "y",
        "banners",
        "z",
        "()Z",
        "inSearchMode",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/chat/g;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/chat/j;Lcom/im/freechat/domain/usecase/chat/k;Lcom/im/freechat/domain/usecase/messages/h;Lcom/im/freechat/domain/usecase/chat/s;Lcom/im/freechat/domain/usecase/auth/e;Lcom/im/freechat/domain/usecase/auth/c;)V",
        "Directions",
        "NetworkState",
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
.field private final c:Lcom/im/freechat/domain/usecase/chat/g;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/domain/usecase/chat/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lcom/im/freechat/domain/usecase/chat/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/im/freechat/domain/usecase/chat/k;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/im/freechat/domain/usecase/messages/h;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lcom/im/freechat/domain/usecase/chat/s;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lcom/im/freechat/domain/usecase/auth/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Lcom/im/freechat/domain/usecase/auth/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final n:Landroidx/lifecycle/MutableLiveData;
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

.field private final o:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final p:Landroidx/lifecycle/MutableLiveData;
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

.field private final q:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final r:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/banner/Banner;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/usecase/chat/g;Lcom/im/freechat/domain/usecase/chat/e;Lcom/im/freechat/domain/usecase/chat/j;Lcom/im/freechat/domain/usecase/chat/k;Lcom/im/freechat/domain/usecase/messages/h;Lcom/im/freechat/domain/usecase/chat/s;Lcom/im/freechat/domain/usecase/auth/e;Lcom/im/freechat/domain/usecase/auth/c;)V
    .locals 6
    .param p1    # Lcom/im/freechat/domain/usecase/chat/g;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/usecase/chat/e;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/usecase/chat/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/domain/usecase/chat/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/domain/usecase/messages/h;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/im/freechat/domain/usecase/chat/s;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Lcom/im/freechat/domain/usecase/auth/e;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p8    # Lcom/im/freechat/domain/usecase/auth/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "listenAllChatsInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteChatByIdInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenTypingInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinChatInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchMessagesInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscribeChatSyncStateInteractor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenConnectionStateInteractor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getBannerListInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->c:Lcom/im/freechat/domain/usecase/chat/g;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->d:Lcom/im/freechat/domain/usecase/chat/e;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->e:Lcom/im/freechat/domain/usecase/chat/j;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->f:Lcom/im/freechat/domain/usecase/chat/k;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->g:Lcom/im/freechat/domain/usecase/messages/h;

    .line 7
    iput-object p6, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->h:Lcom/im/freechat/domain/usecase/chat/s;

    .line 8
    iput-object p7, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->i:Lcom/im/freechat/domain/usecase/auth/e;

    .line 9
    iput-object p8, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->j:Lcom/im/freechat/domain/usecase/auth/c;

    .line 10
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;->CONNECTED:Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 11
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->l:Ljava/util/Map;

    .line 12
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 13
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 14
    new-instance p4, Lcom/im/freechat/ui/chatlist/m;

    invoke-direct {p4, p0}, Lcom/im/freechat/ui/chatlist/m;-><init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)V

    invoke-static {p2, p4}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    const-string p4, "map(searchMessagesList) \u2026ge = msg)\n        }\n    }"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->o:Landroidx/lifecycle/LiveData;

    .line 15
    new-instance p4, Landroidx/lifecycle/MutableLiveData;

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p4, p5}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 16
    new-instance p4, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {p4}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 17
    new-instance p5, Lcom/im/freechat/ui/chatlist/o;

    invoke-direct {p5, p0, p4}, Lcom/im/freechat/ui/chatlist/o;-><init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;)V

    invoke-virtual {p4, p2, p5}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 18
    new-instance p2, Lcom/im/freechat/ui/chatlist/n;

    invoke-direct {p2, p0, p4}, Lcom/im/freechat/ui/chatlist/n;-><init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;)V

    invoke-virtual {p4, p1, p2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 19
    iput-object p4, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->q:Landroidx/lifecycle/MediatorLiveData;

    .line 20
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 21
    invoke-direct {p0}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->J()Lkotlinx/coroutines/j2;

    const/4 p1, 0x0

    .line 22
    invoke-static {p3, p1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/im/freechat/ui/chatlist/ChatListViewModel$c;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chatlist/ChatListViewModel$c;-><init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private static final E(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->G(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;)V

    return-void
.end method

.method private static final F(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->G(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;)V

    return-void
.end method

.method private static final G(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/ui/chatlist/ChatListViewModel;",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->o:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static final H(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3
    move-object v10, v4

    check-cast v10, Lcom/im/freechat/shared/entities/message/Message;

    .line 4
    iget-object v4, v0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_4

    const-string v5, "value"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/im/freechat/shared/entities/chat/Chat;

    .line 6
    invoke-virtual {v6}, Lcom/im/freechat/shared/entities/chat/Chat;->getChatId()I

    move-result v6

    invoke-virtual {v10}, Lcom/im/freechat/shared/entities/message/Message;->getChatId()I

    move-result v7

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    :cond_3
    move-object v5, v1

    .line 7
    :goto_2
    check-cast v5, Lcom/im/freechat/shared/entities/chat/Chat;

    goto :goto_3

    :cond_4
    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0x1ffef

    const/16 v24, 0x0

    .line 8
    invoke-static/range {v5 .. v24}, Lcom/im/freechat/shared/entities/chat/Chat;->copy$default(Lcom/im/freechat/shared/entities/chat/Chat;ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/util/Map;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/chat/Chat;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v1

    :goto_4
    if-eqz v4, :cond_0

    .line 9
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object v1, v2

    :cond_7
    return-object v1
.end method

.method private final J()Lkotlinx/coroutines/j2;
    .locals 2

    new-instance v0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel$d;-><init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method private final M(Ljava/util/Map;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 2
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    move-object v5, v4

    check-cast v5, Lcom/im/freechat/shared/entities/chat/Chat;

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/chat/Chat;->getChatId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 7
    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/chat/Chat;->getChatId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v15, p1

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    :cond_0
    const v23, 0xffff

    const/16 v24, 0x0

    const/4 v15, 0x0

    move-object/from16 v22, v4

    invoke-static/range {v5 .. v24}, Lcom/im/freechat/shared/entities/chat/Chat;->copy$default(Lcom/im/freechat/shared/entities/chat/Chat;ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/util/Map;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/chat/Chat;

    move-result-object v5

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/chat/Chat;->getChatId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v5}, Lcom/im/freechat/shared/entities/chat/Chat;->getTypings()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 9
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v22

    const v23, 0xffff

    const/16 v24, 0x0

    invoke-static/range {v5 .. v24}, Lcom/im/freechat/shared/entities/chat/Chat;->copy$default(Lcom/im/freechat/shared/entities/chat/Chat;ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/util/Map;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/chat/Chat;

    move-result-object v5

    .line 10
    :cond_2
    :goto_1
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 11
    :cond_4
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->H(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->F(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->E(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic l(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic m(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Lcom/im/freechat/domain/usecase/chat/e;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->d:Lcom/im/freechat/domain/usecase/chat/e;

    return-object p0
.end method

.method public static final synthetic n(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Lcom/im/freechat/domain/usecase/auth/c;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->j:Lcom/im/freechat/domain/usecase/auth/c;

    return-object p0
.end method

.method public static final synthetic o(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Lcom/im/freechat/domain/usecase/chat/g;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->c:Lcom/im/freechat/domain/usecase/chat/g;

    return-object p0
.end method

.method public static final synthetic p(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Lcom/im/freechat/domain/usecase/auth/e;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->i:Lcom/im/freechat/domain/usecase/auth/e;

    return-object p0
.end method

.method public static final synthetic q(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Lcom/im/freechat/domain/usecase/chat/j;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->e:Lcom/im/freechat/domain/usecase/chat/j;

    return-object p0
.end method

.method public static final synthetic r(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Lcom/im/freechat/domain/usecase/chat/k;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->f:Lcom/im/freechat/domain/usecase/chat/k;

    return-object p0
.end method

.method public static final synthetic s(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Lcom/im/freechat/domain/usecase/messages/h;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->g:Lcom/im/freechat/domain/usecase/messages/h;

    return-object p0
.end method

.method public static final synthetic t(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Lcom/im/freechat/domain/usecase/chat/s;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->h:Lcom/im/freechat/domain/usecase/chat/s;

    return-object p0
.end method

.method public static final synthetic u(Lcom/im/freechat/ui/chatlist/ChatListViewModel;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->l:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic v(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->M(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->q:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public final B()Landroidx/lifecycle/MutableLiveData;
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

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final C()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final D()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final I(Ljava/lang/String;)Lkotlinx/coroutines/j2;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "searchQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel$b;-><init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public final K()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel$e;-><init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method public final L(Lcom/im/freechat/shared/entities/chat/Chat;)V
    .locals 3
    .param p1    # Lcom/im/freechat/shared/entities/chat/Chat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "chat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/chatlist/ChatListViewModel$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/im/freechat/ui/chatlist/ChatListViewModel$f;-><init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;Lcom/im/freechat/shared/entities/chat/Chat;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final w(I)Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chatlist/ChatListViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel$a;-><init>(Lcom/im/freechat/ui/chatlist/ChatListViewModel;ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final y()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/banner/Banner;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->o:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
