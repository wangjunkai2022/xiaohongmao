.class public final Lcom/im/freechat/ui/contacts/ContactListViewModel;
.super Lcom/im/freechat/base/a;
.source "ContactListViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;,
        Lcom/im/freechat/ui/contacts/ContactListViewModel$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/a<",
        "Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactListViewModel.kt\ncom/im/freechat/ui/contacts/ContactListViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1655#2,8:131\n766#2:139\n857#2,2:140\n*S KotlinDebug\n*F\n+ 1 ContactListViewModel.kt\ncom/im/freechat/ui/contacts/ContactListViewModel\n*L\n45#1:131,8\n46#1:139\n46#1:140,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001^BO\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010-\u001a\u00020*\u0012\u0006\u00101\u001a\u00020.\u0012\u0006\u00105\u001a\u000202\u0012\u0006\u00109\u001a\u000206\u0012\u0006\u0010=\u001a\u00020:\u00a2\u0006\u0004\u0008\\\u0010]J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0005J\u0018\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0015J\u0016\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u000eR\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\"\u0010D\u001a\u00020\n8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR%\u0010K\u001a\u0010\u0012\u000c\u0012\n F*\u0004\u0018\u00010\u00050\u00050E8\u0006\u00a2\u0006\u000c\n\u0004\u0008G\u0010H\u001a\u0004\u0008I\u0010JR#\u0010O\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120L0E8\u0006\u00a2\u0006\u000c\n\u0004\u0008M\u0010H\u001a\u0004\u0008N\u0010JR\"\u0010Q\u001a\u0010\u0012\u000c\u0012\n F*\u0004\u0018\u00010\u000e0\u000e0E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010HR \u0010S\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120L0E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010HR \u0010U\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120L0E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008T\u0010HR#\u0010[\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120L0V8\u0006\u00a2\u0006\u000c\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010Z\u00a8\u0006_"
    }
    d2 = {
        "Lcom/im/freechat/ui/contacts/ContactListViewModel;",
        "Lcom/im/freechat/base/a;",
        "Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;",
        "Lkotlinx/coroutines/j2;",
        "K",
        "",
        "showService",
        "O",
        "N",
        "M",
        "Lcom/im/freechat/shared/entities/contact/ContactType;",
        "type",
        "",
        "L",
        "",
        "filter",
        "typeAhead",
        "E",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "contact",
        "P",
        "",
        "contactId",
        "D",
        "name",
        "R",
        "Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;",
        "c",
        "Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;",
        "listenFollowingsInteractor",
        "Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;",
        "d",
        "Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;",
        "ListenBlockedContactsInteractor",
        "Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;",
        "e",
        "Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;",
        "ListenContactListInteractor",
        "Lcom/im/freechat/domain/usecase/chat/c;",
        "f",
        "Lcom/im/freechat/domain/usecase/chat/c;",
        "createSingleChatInteractor",
        "Lcom/im/freechat/domain/usecase/contact/c;",
        "g",
        "Lcom/im/freechat/domain/usecase/contact/c;",
        "getServiceChatIdInteractor",
        "Lcom/im/freechat/domain/usecase/contact/f;",
        "h",
        "Lcom/im/freechat/domain/usecase/contact/f;",
        "removeFriendInteractor",
        "Lcom/im/freechat/domain/usecase/contact/j;",
        "i",
        "Lcom/im/freechat/domain/usecase/contact/j;",
        "unblockContactInteractor",
        "Lcom/im/freechat/domain/usecase/contact/k;",
        "j",
        "Lcom/im/freechat/domain/usecase/contact/k;",
        "updateUserMaskInteractor",
        "Lcom/im/freechat/domain/usecase/contact/g;",
        "k",
        "Lcom/im/freechat/domain/usecase/contact/g;",
        "searchContactInteractor",
        "l",
        "Lcom/im/freechat/shared/entities/contact/ContactType;",
        "H",
        "()Lcom/im/freechat/shared/entities/contact/ContactType;",
        "Q",
        "(Lcom/im/freechat/shared/entities/contact/ContactType;)V",
        "currentType",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "m",
        "Landroidx/lifecycle/MutableLiveData;",
        "J",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loading",
        "",
        "n",
        "I",
        "extraContacts",
        "o",
        "activeFilter",
        "p",
        "originalList",
        "q",
        "foundItems",
        "Landroidx/lifecycle/MediatorLiveData;",
        "r",
        "Landroidx/lifecycle/MediatorLiveData;",
        "G",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "contactList",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;Lcom/im/freechat/domain/usecase/chat/c;Lcom/im/freechat/domain/usecase/contact/c;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/usecase/contact/k;Lcom/im/freechat/domain/usecase/contact/g;)V",
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
.field private final c:Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/im/freechat/domain/usecase/chat/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/im/freechat/domain/usecase/contact/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lcom/im/freechat/domain/usecase/contact/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lcom/im/freechat/domain/usecase/contact/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Lcom/im/freechat/domain/usecase/contact/k;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Lcom/im/freechat/domain/usecase/contact/g;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public l:Lcom/im/freechat/shared/entities/contact/ContactType;

.field private final m:Landroidx/lifecycle/MutableLiveData;
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

.field private final n:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final o:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final p:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final q:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final r:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;Lcom/im/freechat/domain/usecase/chat/c;Lcom/im/freechat/domain/usecase/contact/c;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/usecase/contact/k;Lcom/im/freechat/domain/usecase/contact/g;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/domain/usecase/chat/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/domain/usecase/contact/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/im/freechat/domain/usecase/contact/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Lcom/im/freechat/domain/usecase/contact/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p8    # Lcom/im/freechat/domain/usecase/contact/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p9    # Lcom/im/freechat/domain/usecase/contact/g;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "listenFollowingsInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ListenBlockedContactsInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ListenContactListInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createSingleChatInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getServiceChatIdInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeFriendInteractor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unblockContactInteractor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateUserMaskInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchContactInteractor"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->c:Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->d:Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->e:Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->f:Lcom/im/freechat/domain/usecase/chat/c;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->g:Lcom/im/freechat/domain/usecase/contact/c;

    .line 7
    iput-object p6, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->h:Lcom/im/freechat/domain/usecase/contact/f;

    .line 8
    iput-object p7, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->i:Lcom/im/freechat/domain/usecase/contact/j;

    .line 9
    iput-object p8, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->j:Lcom/im/freechat/domain/usecase/contact/k;

    .line 10
    iput-object p9, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->k:Lcom/im/freechat/domain/usecase/contact/g;

    .line 11
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 12
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 13
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    const-string p3, ""

    invoke-direct {p2, p3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 14
    new-instance p3, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 15
    new-instance p4, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    invoke-direct {p4, p5}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 16
    new-instance p5, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {p5}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 17
    new-instance p6, Lcom/im/freechat/ui/contacts/m;

    invoke-direct {p6, p5, p0}, Lcom/im/freechat/ui/contacts/m;-><init>(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;)V

    invoke-virtual {p5, p3, p6}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 18
    new-instance p3, Lcom/im/freechat/ui/contacts/n;

    invoke-direct {p3, p5, p0}, Lcom/im/freechat/ui/contacts/n;-><init>(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;)V

    invoke-virtual {p5, p1, p3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 19
    new-instance p1, Lcom/im/freechat/ui/contacts/o;

    invoke-direct {p1, p5, p0}, Lcom/im/freechat/ui/contacts/o;-><init>(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;)V

    invoke-virtual {p5, p4, p1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 20
    new-instance p1, Lcom/im/freechat/ui/contacts/l;

    invoke-direct {p1, p5, p0}, Lcom/im/freechat/ui/contacts/l;-><init>(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;)V

    invoke-virtual {p5, p2, p1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 21
    iput-object p5, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->r:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method

.method private static final A(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/util/List;)V
    .locals 0

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->C(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;)V

    return-void
.end method

.method private static final B(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/lang/String;)V
    .locals 0

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->C(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;)V

    return-void
.end method

.method private static final C(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;",
            "Lcom/im/freechat/ui/contacts/ContactListViewModel;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/im/freechat/ui/contacts/ContactListViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    const-string v1, "originalList.value ?: emptyList<UserModel>()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Lcom/im/freechat/ui/contacts/ContactListViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/im/freechat/ui/contacts/ContactListViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_2
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    move-object v4, v3

    check-cast v4, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 8
    invoke-virtual {v4}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 9
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 13
    iget-object v4, p1, Lcom/im/freechat/ui/contacts/ContactListViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_7

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_9

    iget-object v4, p1, Lcom/im/freechat/ui/contacts/ContactListViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_8

    const-string v4, ""

    :cond_8
    const-string v7, "activeFilter.value ?: \"\""

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/im/freechat/shared/entities/contact/UserModel;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/4 v5, 0x1

    :cond_a
    if-eqz v5, :cond_5

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_b
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic F(Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->E(Ljava/lang/String;Z)V

    return-void
.end method

.method private final K()Lkotlinx/coroutines/j2;
    .locals 2

    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListViewModel$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/contacts/ContactListViewModel$c;-><init>(Lcom/im/freechat/ui/contacts/ContactListViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method private final M(Z)Lkotlinx/coroutines/j2;
    .locals 2

    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListViewModel$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/im/freechat/ui/contacts/ContactListViewModel$d;-><init>(Lcom/im/freechat/ui/contacts/ContactListViewModel;ZLkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method private final N(Z)Lkotlinx/coroutines/j2;
    .locals 2

    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListViewModel$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/im/freechat/ui/contacts/ContactListViewModel$e;-><init>(Lcom/im/freechat/ui/contacts/ContactListViewModel;ZLkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method private final O(Z)Lkotlinx/coroutines/j2;
    .locals 2

    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListViewModel$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/im/freechat/ui/contacts/ContactListViewModel$f;-><init>(Lcom/im/freechat/ui/contacts/ContactListViewModel;ZLkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic i(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->y(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic j(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->z(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->B(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->A(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic m(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic n(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/chat/c;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->f:Lcom/im/freechat/domain/usecase/chat/c;

    return-object p0
.end method

.method public static final synthetic o(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic p(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/contact/c;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->g:Lcom/im/freechat/domain/usecase/contact/c;

    return-object p0
.end method

.method public static final synthetic q(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->d:Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;

    return-object p0
.end method

.method public static final synthetic r(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->e:Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;

    return-object p0
.end method

.method public static final synthetic s(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->c:Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;

    return-object p0
.end method

.method public static final synthetic t(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic u(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/contact/f;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->h:Lcom/im/freechat/domain/usecase/contact/f;

    return-object p0
.end method

.method public static final synthetic v(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/contact/g;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->k:Lcom/im/freechat/domain/usecase/contact/g;

    return-object p0
.end method

.method public static final synthetic w(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/contact/j;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->i:Lcom/im/freechat/domain/usecase/contact/j;

    return-object p0
.end method

.method public static final synthetic x(Lcom/im/freechat/ui/contacts/ContactListViewModel;)Lcom/im/freechat/domain/usecase/contact/k;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->j:Lcom/im/freechat/domain/usecase/contact/k;

    return-object p0
.end method

.method private static final y(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/util/List;)V
    .locals 0

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->C(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;)V

    return-void
.end method

.method private static final z(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;Ljava/util/List;)V
    .locals 0

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->C(Landroidx/lifecycle/MediatorLiveData;Lcom/im/freechat/ui/contacts/ContactListViewModel;)V

    return-void
.end method


# virtual methods
.method public final D(I)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/im/freechat/ui/contacts/ContactListViewModel$b;-><init>(ILcom/im/freechat/ui/contacts/ContactListViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0, v1}, Lcom/im/freechat/base/a;->d(Landroidx/lifecycle/MutableLiveData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final E(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->K()Lkotlinx/coroutines/j2;

    :cond_0
    return-void
.end method

.method public final G()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->r:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public final H()Lcom/im/freechat/shared/entities/contact/ContactType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->l:Lcom/im/freechat/shared/entities/contact/ContactType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "currentType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final I()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final J()Landroidx/lifecycle/MutableLiveData;
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

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final L(Lcom/im/freechat/shared/entities/contact/ContactType;Z)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/contact/ContactType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->Q(Lcom/im/freechat/shared/entities/contact/ContactType;)V

    .line 2
    sget-object v0, Lcom/im/freechat/ui/contacts/ContactListViewModel$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->M(Z)Lkotlinx/coroutines/j2;

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->N(Z)Lkotlinx/coroutines/j2;

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->O(Z)Lkotlinx/coroutines/j2;

    :goto_0
    return-void
.end method

.method public final P(Lcom/im/freechat/shared/entities/contact/UserModel;)Lkotlinx/coroutines/j2;
    .locals 2
    .param p1    # Lcom/im/freechat/shared/entities/contact/UserModel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/im/freechat/ui/contacts/ContactListViewModel$g;-><init>(Lcom/im/freechat/ui/contacts/ContactListViewModel;Lcom/im/freechat/shared/entities/contact/UserModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public final Q(Lcom/im/freechat/shared/entities/contact/ContactType;)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/contact/ContactType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/contacts/ContactListViewModel;->l:Lcom/im/freechat/shared/entities/contact/ContactType;

    return-void
.end method

.method public final R(ILjava/lang/String;)Lkotlinx/coroutines/j2;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListViewModel$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/im/freechat/ui/contacts/ContactListViewModel$h;-><init>(Lcom/im/freechat/ui/contacts/ContactListViewModel;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method
