.class public final Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;
.super Lcom/im/freechat/base/a;
.source "UserProfileViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/a<",
        "Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserProfileViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserProfileViewModel.kt\ncom/im/freechat/ui/chat/userprofile/UserProfileViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n766#2:128\n857#2,2:129\n1360#2:131\n1446#2,2:132\n1549#2:134\n1620#2,3:135\n1448#2,3:138\n766#2:141\n857#2,2:142\n1549#2:144\n1620#2,3:145\n766#2:148\n857#2,2:149\n1549#2:151\n1620#2,3:152\n*S KotlinDebug\n*F\n+ 1 UserProfileViewModel.kt\ncom/im/freechat/ui/chat/userprofile/UserProfileViewModel\n*L\n38#1:128\n38#1:129,2\n39#1:131\n39#1:132,2\n40#1:134\n40#1:135,3\n39#1:138,3\n44#1:141\n44#1:142,2\n45#1:144\n45#1:145,3\n48#1:148\n48#1:149,2\n49#1:151\n49#1:152,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001]BG\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010#\u001a\u00020 \u0012\u0006\u0010\'\u001a\u00020$\u0012\u0006\u0010+\u001a\u00020(\u0012\u0006\u0010/\u001a\u00020,\u00a2\u0006\u0004\u0008[\u0010\\J\u0016\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\u000c\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u0007J\u0006\u0010\u000f\u001a\u00020\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\"\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\u000f\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001d\u0010A\u001a\u0008\u0012\u0004\u0012\u00020<0;8\u0006\u00a2\u0006\u000c\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@R#\u0010F\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020C0B0;8\u0006\u00a2\u0006\u000c\n\u0004\u0008D\u0010>\u001a\u0004\u0008E\u0010@R%\u0010J\u001a\u0010\u0012\u000c\u0012\n G*\u0004\u0018\u00010\u00050\u00050;8\u0006\u00a2\u0006\u000c\n\u0004\u0008H\u0010>\u001a\u0004\u0008I\u0010@R \u0010M\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020K0B0;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008L\u0010>R1\u0010T\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020O G*\n\u0012\u0004\u0012\u00020O\u0018\u00010B0B0N8\u0006\u00a2\u0006\u000c\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010SR1\u0010W\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020O G*\n\u0012\u0004\u0012\u00020O\u0018\u00010B0B0N8\u0006\u00a2\u0006\u000c\n\u0004\u0008U\u0010Q\u001a\u0004\u0008V\u0010SR1\u0010Z\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020O G*\n\u0012\u0004\u0012\u00020O\u0018\u00010B0B0N8\u0006\u00a2\u0006\u000c\n\u0004\u0008X\u0010Q\u001a\u0004\u0008Y\u0010S\u00a8\u0006^"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;",
        "Lcom/im/freechat/base/a;",
        "Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;",
        "",
        "contactId",
        "",
        "fromSingleChat",
        "Lkotlinx/coroutines/j2;",
        "F",
        "w",
        "N",
        "u",
        "M",
        "L",
        "",
        "I",
        "Lcom/im/freechat/domain/usecase/contact/d;",
        "c",
        "Lcom/im/freechat/domain/usecase/contact/d;",
        "listenContactInteractor",
        "Lcom/im/freechat/domain/usecase/chat/c;",
        "d",
        "Lcom/im/freechat/domain/usecase/chat/c;",
        "createSingleChatInteractor",
        "Lcom/im/freechat/domain/usecase/contact/b;",
        "e",
        "Lcom/im/freechat/domain/usecase/contact/b;",
        "followContactInteractor",
        "Lcom/im/freechat/domain/usecase/contact/f;",
        "f",
        "Lcom/im/freechat/domain/usecase/contact/f;",
        "removeFriendInteractor",
        "Lcom/im/freechat/domain/usecase/contact/a;",
        "g",
        "Lcom/im/freechat/domain/usecase/contact/a;",
        "blockContactInteractor",
        "Lcom/im/freechat/domain/usecase/contact/j;",
        "h",
        "Lcom/im/freechat/domain/usecase/contact/j;",
        "unblockContactInteractor",
        "Lcom/im/freechat/domain/usecase/messages/k;",
        "i",
        "Lcom/im/freechat/domain/usecase/messages/k;",
        "subscribeChatMessagesInteractor",
        "Lcom/im/freechat/domain/usecase/members/e;",
        "j",
        "Lcom/im/freechat/domain/usecase/members/e;",
        "listenCommonGroupsInteractor",
        "k",
        "z",
        "()I",
        "J",
        "(I)V",
        "l",
        "Z",
        "B",
        "()Z",
        "K",
        "(Z)V",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "m",
        "Landroidx/lifecycle/MutableLiveData;",
        "y",
        "()Landroidx/lifecycle/MutableLiveData;",
        "contact",
        "",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "n",
        "x",
        "commonGroups",
        "kotlin.jvm.PlatformType",
        "o",
        "D",
        "loading",
        "Lcom/im/freechat/shared/entities/message/Message;",
        "p",
        "messages",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/im/freechat/ui/chat/history/a;",
        "q",
        "Landroidx/lifecycle/LiveData;",
        "E",
        "()Landroidx/lifecycle/LiveData;",
        "media",
        "r",
        "C",
        "links",
        "s",
        "A",
        "files",
        "<init>",
        "(Lcom/im/freechat/domain/usecase/contact/d;Lcom/im/freechat/domain/usecase/chat/c;Lcom/im/freechat/domain/usecase/contact/b;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/a;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/usecase/messages/k;Lcom/im/freechat/domain/usecase/members/e;)V",
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
.field private final c:Lcom/im/freechat/domain/usecase/contact/d;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/im/freechat/domain/usecase/chat/c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lcom/im/freechat/domain/usecase/contact/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lcom/im/freechat/domain/usecase/contact/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/im/freechat/domain/usecase/contact/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lcom/im/freechat/domain/usecase/contact/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lcom/im/freechat/domain/usecase/messages/k;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Lcom/im/freechat/domain/usecase/members/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private k:I

.field private l:Z

.field private final m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
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
            "Lcom/im/freechat/shared/entities/chat/Chat;",
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
            "Ljava/lang/Boolean;",
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
            "Lcom/im/freechat/shared/entities/message/Message;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final q:Landroidx/lifecycle/LiveData;
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

.field private final r:Landroidx/lifecycle/LiveData;
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

.field private final s:Landroidx/lifecycle/LiveData;
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


# direct methods
.method public constructor <init>(Lcom/im/freechat/domain/usecase/contact/d;Lcom/im/freechat/domain/usecase/chat/c;Lcom/im/freechat/domain/usecase/contact/b;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/a;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/usecase/messages/k;Lcom/im/freechat/domain/usecase/members/e;)V
    .locals 1
    .param p1    # Lcom/im/freechat/domain/usecase/contact/d;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/domain/usecase/chat/c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/usecase/contact/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/domain/usecase/contact/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/domain/usecase/contact/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/im/freechat/domain/usecase/contact/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Lcom/im/freechat/domain/usecase/messages/k;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p8    # Lcom/im/freechat/domain/usecase/members/e;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "listenContactInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createSingleChatInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "followContactInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeFriendInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockContactInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unblockContactInteractor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscribeChatMessagesInteractor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenCommonGroupsInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->c:Lcom/im/freechat/domain/usecase/contact/d;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->d:Lcom/im/freechat/domain/usecase/chat/c;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->e:Lcom/im/freechat/domain/usecase/contact/b;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->f:Lcom/im/freechat/domain/usecase/contact/f;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->g:Lcom/im/freechat/domain/usecase/contact/a;

    .line 7
    iput-object p6, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->h:Lcom/im/freechat/domain/usecase/contact/j;

    .line 8
    iput-object p7, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->i:Lcom/im/freechat/domain/usecase/messages/k;

    .line 9
    iput-object p8, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->j:Lcom/im/freechat/domain/usecase/members/e;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->k:I

    .line 11
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 12
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 13
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 14
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 15
    sget-object p2, Lcom/im/freechat/ui/chat/userprofile/l;->a:Lcom/im/freechat/ui/chat/userprofile/l;

    invoke-static {p1, p2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    const-string p3, "map(messages) { list ->\n\u2026nt) }\n            }\n    }"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->q:Landroidx/lifecycle/LiveData;

    .line 16
    sget-object p2, Lcom/im/freechat/ui/chat/userprofile/m;->a:Lcom/im/freechat/ui/chat/userprofile/m;

    invoke-static {p1, p2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    const-string p3, "map(messages) { list ->\n\u2026atId, it.content) }\n    }"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->r:Landroidx/lifecycle/LiveData;

    .line 17
    sget-object p2, Lcom/im/freechat/ui/chat/userprofile/k;->a:Lcom/im/freechat/ui/chat/userprofile/k;

    invoke-static {p1, p2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->s:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method private static final G(Ljava/util/List;)Ljava/util/List;
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

.method private static final H(Ljava/util/List;)Ljava/util/List;
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

    invoke-static {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->H(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;)Lcom/im/freechat/domain/usecase/contact/a;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->g:Lcom/im/freechat/domain/usecase/contact/a;

    return-object p0
.end method

.method public static final synthetic m(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;)Lcom/im/freechat/domain/usecase/chat/c;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->d:Lcom/im/freechat/domain/usecase/chat/c;

    return-object p0
.end method

.method public static final synthetic n(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;)Lcom/im/freechat/domain/usecase/contact/b;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->e:Lcom/im/freechat/domain/usecase/contact/b;

    return-object p0
.end method

.method public static final synthetic o(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;)Lcom/im/freechat/domain/usecase/members/e;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->j:Lcom/im/freechat/domain/usecase/members/e;

    return-object p0
.end method

.method public static final synthetic p(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;)Lcom/im/freechat/domain/usecase/contact/d;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->c:Lcom/im/freechat/domain/usecase/contact/d;

    return-object p0
.end method

.method public static final synthetic q(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic r(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;)Lcom/im/freechat/domain/usecase/contact/f;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->f:Lcom/im/freechat/domain/usecase/contact/f;

    return-object p0
.end method

.method public static final synthetic s(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;)Lcom/im/freechat/domain/usecase/messages/k;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->i:Lcom/im/freechat/domain/usecase/messages/k;

    return-object p0
.end method

.method public static final synthetic t(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;)Lcom/im/freechat/domain/usecase/contact/j;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->h:Lcom/im/freechat/domain/usecase/contact/j;

    return-object p0
.end method

.method private static final v(Ljava/util/List;)Ljava/util/List;
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


# virtual methods
.method public final A()Landroidx/lifecycle/LiveData;
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

    iget-object v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->s:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->l:Z

    return v0
.end method

.method public final C()Landroidx/lifecycle/LiveData;
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

    iget-object v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->r:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final D()Landroidx/lifecycle/MutableLiveData;
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

    iget-object v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final E()Landroidx/lifecycle/LiveData;
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

    iget-object v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->q:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final F(IZ)Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$c;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;IZLkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object p1

    return-object p1
.end method

.method public final I()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->l:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;->BACK:Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/im/freechat/base/a;->f(Lcom/im/freechat/base/a;Ljava/lang/Enum;Landroid/os/Bundle;ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->L()Lkotlinx/coroutines/j2;

    :goto_0
    return-void
.end method

.method public final J(I)V
    .locals 0

    iput p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->k:I

    return-void
.end method

.method public final K(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->l:Z

    return-void
.end method

.method public final L()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$d;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method public final M()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$e;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method public final N()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$f;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$a;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method public final w()Lkotlinx/coroutines/j2;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$b;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/a;->c(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;

    move-result-object v0

    return-object v0
.end method

.method public final x()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final y()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->k:I

    return v0
.end method
