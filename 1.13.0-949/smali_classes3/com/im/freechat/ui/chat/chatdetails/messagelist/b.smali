.class public Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "ChatDetailsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatDetailsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatDetailsAdapter.kt\ncom/im/freechat/ui/chat/chatdetails/messagelist/ChatDetailsAdapter\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,256:1\n33#2,3:257\n*S KotlinDebug\n*F\n+ 1 ChatDetailsAdapter.kt\ncom/im/freechat/ui/chat/chatdetails/messagelist/ChatDetailsAdapter\n*L\n51#1:257,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010&\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008U\u0010VJ\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0003H\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010\u001c\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0013\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R+\u0010\"\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00118V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010\u0015\"\u0004\u0008!\u0010\u0017R4\u0010+\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R6\u0010/\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\n\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010&\u001a\u0004\u0008-\u0010(\"\u0004\u0008.\u0010*R0\u00107\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R0\u0010;\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00102\u001a\u0004\u00089\u00104\"\u0004\u0008:\u00106R0\u0010>\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u00102\u001a\u0004\u0008<\u00104\"\u0004\u0008=\u00106R0\u0010B\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u00102\u001a\u0004\u0008@\u00104\"\u0004\u0008A\u00106R>\u0010F\u001a\u001e\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010D0C\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u00102\u001a\u0004\u0008,\u00104\"\u0004\u0008E\u00106RT\u0010N\u001a4\u0012\u0013\u0012\u00110D\u00a2\u0006\u000c\u0008G\u0012\u0008\u0008H\u0012\u0004\u0008\u0008(I\u0012\u0013\u0012\u00110J\u00a2\u0006\u000c\u0008G\u0012\u0008\u0008H\u0012\u0004\u0008\u0008(K\u0012\u0004\u0012\u00020\n\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010&\u001a\u0004\u0008L\u0010(\"\u0004\u0008M\u0010*R8\u0010P\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\n\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010&\u001a\u0004\u0008?\u0010(\"\u0004\u0008O\u0010*R0\u0010R\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u00102\u001a\u0004\u00081\u00104\"\u0004\u0008Q\u00106R0\u0010T\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u00102\u001a\u0004\u00088\u00104\"\u0004\u0008S\u00106\u00a8\u0006W"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
        "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;",
        "",
        "position",
        "",
        "getItemId",
        "getItemViewType",
        "holder",
        "",
        "v",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "u",
        "s",
        "",
        "a",
        "Z",
        "q",
        "()Z",
        "C",
        "(Z)V",
        "isGroup",
        "b",
        "p",
        "z",
        "isChannel",
        "<set-?>",
        "c",
        "Lkotlin/properties/ReadWriteProperty;",
        "r",
        "I",
        "isSelectionModeOn",
        "Lkotlin/Function2;",
        "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
        "d",
        "Lkotlin/jvm/functions/Function2;",
        "l",
        "()Lkotlin/jvm/functions/Function2;",
        "F",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onAudioSeek",
        "e",
        "m",
        "G",
        "onItemSelect",
        "Lkotlin/Function1;",
        "f",
        "Lkotlin/jvm/functions/Function1;",
        "k",
        "()Lkotlin/jvm/functions/Function1;",
        "E",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemClickListener",
        "g",
        "h",
        "A",
        "failedClickListener",
        "j",
        "D",
        "itemBinaryClickListener",
        "i",
        "n",
        "H",
        "quoteClickListener",
        "",
        "",
        "w",
        "atSomeOneClickListener",
        "Lkotlin/ParameterName;",
        "name",
        "url",
        "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
        "target",
        "o",
        "J",
        "urlClickListener",
        "B",
        "forwardClickListener",
        "x",
        "avatarClickListener",
        "y",
        "cancelDownload",
        "<init>",
        "()V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field static final synthetic o:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Lkotlin/properties/ReadWriteProperty;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private j:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private k:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private l:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private m:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private n:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;

    const-string v3, "isSelectionModeOn"

    const-string v4, "isSelectionModeOn()Z"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->o:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/c;->a()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 2
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$i;

    invoke-direct {v1, v0, p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$i;-><init>(Ljava/lang/Object;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V

    .line 4
    iput-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->c:Lkotlin/properties/ReadWriteProperty;

    .line 5
    sget-object v0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$a;->a:Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$a;

    iput-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static synthetic d(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->t(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Landroid/view/View;)V

    return-void
.end method

.method private static final t(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Landroid/view/View;)V
    .locals 1

    const-string p2, "$msgWrap"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->isSent()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->r()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->e:Lkotlin/jvm/functions/Function2;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->j()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    invoke-interface {p2, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->f:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_1

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/message/Message;->getMessageStatus()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object p2

    sget-object v0, Lcom/im/freechat/shared/entities/message/Message$MessageStatus;->SEND_FAILED:Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->r()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iget-object p1, p1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->g:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public final A(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->g:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final B(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->l:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final C(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    return-void
.end method

.method public final D(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->h:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final E(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final F(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final G(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->e:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final H(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->i:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public I(Z)V
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->c:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->o:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final J(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->k:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final e()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->j:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final f()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->m:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final g()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->n:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, La5/a;->a(J)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/im/freechat/extend/p;->z(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xe

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/im/freechat/extend/p;->A(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/im/freechat/extend/p;->t(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    goto/16 :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/im/freechat/extend/p;->s(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/im/freechat/extend/p;->r(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/16 p1, 0x11

    goto/16 :goto_1

    .line 7
    :cond_4
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/im/freechat/extend/p;->B(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0xf

    goto/16 :goto_1

    .line 8
    :cond_5
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/im/freechat/extend/p;->q(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0xb

    goto/16 :goto_1

    .line 9
    :cond_6
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/im/freechat/extend/p;->p(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x5

    goto/16 :goto_1

    .line 10
    :cond_7
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/Message;->getSender()Lcom/im/freechat/shared/entities/contact/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/contact/Sender;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/im/freechat/extend/p;->y(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x13

    goto/16 :goto_1

    .line 11
    :cond_8
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->b:Z

    if-eqz v0, :cond_9

    const/16 p1, 0x15

    goto/16 :goto_1

    .line 12
    :cond_9
    invoke-static {p1}, Lcom/im/freechat/extend/p;->A(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x2

    goto :goto_1

    .line 13
    :cond_a
    invoke-static {p1}, Lcom/im/freechat/extend/p;->t(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x4

    goto :goto_1

    .line 14
    :cond_b
    invoke-static {p1}, Lcom/im/freechat/extend/p;->s(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1}, Lcom/im/freechat/extend/p;->r(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_0

    .line 15
    :cond_c
    invoke-static {p1}, Lcom/im/freechat/extend/p;->B(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p1, 0x10

    goto :goto_1

    .line 16
    :cond_d
    invoke-static {p1}, Lcom/im/freechat/extend/p;->q(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p1, 0xc

    goto :goto_1

    .line 17
    :cond_e
    invoke-static {p1}, Lcom/im/freechat/extend/p;->p(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 p1, 0x6

    goto :goto_1

    .line 18
    :cond_f
    invoke-static {p1}, Lcom/im/freechat/extend/p;->y(Lcom/im/freechat/shared/entities/message/Message;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p1, 0x14

    goto :goto_1

    .line 19
    :cond_10
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weird message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ltimber/log/Timber$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected message"

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_0
    const/16 p1, 0x12

    :goto_1
    return p1
.end method

.method public final h()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->g:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final i()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->l:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final j()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->h:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final k()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->f:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final l()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->d:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final m()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->e:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final n()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->i:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final o()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Lcom/im/freechat/shared/entities/message/MessageStyle$StyleUrlTarget;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->k:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->s(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->u(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->v(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;)V

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->b:Z

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    return v0
.end method

.method public r()Z
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->c:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->o:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public s(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;I)V
    .locals 4
    .param p1    # Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    add-int/lit8 v1, p2, 0x1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    invoke-virtual {v1}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;->i()Lcom/im/freechat/shared/entities/message/Message;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getItem(position)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->r()Z

    move-result v3

    .line 5
    invoke-virtual {p1, v2, v1, p2, v3}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->E(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/shared/entities/message/Message;IZ)V

    .line 6
    new-instance p2, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$b;

    invoke-direct {p2, v0, p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$b;-><init>(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->o0(Lkotlin/jvm/functions/Function1;)V

    .line 7
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/im/freechat/ui/chat/chatdetails/messagelist/a;

    invoke-direct {v1, v0, p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/a;-><init>(Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance p2, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$c;

    invoke-direct {p2, p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$c;-><init>(Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->k0(Lkotlin/jvm/functions/Function1;)V

    .line 9
    new-instance p2, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$d;

    invoke-direct {p2, p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$d;-><init>(Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->u0(Lkotlin/jvm/functions/Function1;)V

    .line 10
    new-instance p2, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$e;

    invoke-direct {p2, p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$e;-><init>(Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->n0(Lkotlin/jvm/functions/Function2;)V

    .line 11
    new-instance p2, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$f;

    invoke-direct {p2, p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$f;-><init>(Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->i0(Lkotlin/jvm/functions/Function1;)V

    .line 12
    new-instance p2, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$g;

    invoke-direct {p2, p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$g;-><init>(Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->w0(Lkotlin/jvm/functions/Function2;)V

    .line 13
    new-instance p2, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$h;

    invoke-direct {p2, p0}, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b$h;-><init>(Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->j0(Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflate(LayoutInflater.f\u2026.context), parent, false)"

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Illegal view type"

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_1
    new-instance p2, Lcom/im/freechat/ui/chat/holder/p0;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/u0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/u0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p2, p1}, Lcom/im/freechat/ui/chat/holder/p0;-><init>(Lf4/u0;)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    new-instance p2, Lcom/im/freechat/ui/chat/holder/n0;

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/p0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/p0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 9
    invoke-direct {p2, p1, p0, v0}, Lcom/im/freechat/ui/chat/holder/n0;-><init>(Lf4/p0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Z)V

    goto/16 :goto_0

    .line 10
    :pswitch_3
    new-instance p2, Lcom/im/freechat/ui/chat/holder/m0;

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/o0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/o0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 13
    invoke-direct {p2, p1, p0, v0}, Lcom/im/freechat/ui/chat/holder/m0;-><init>(Lf4/o0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Z)V

    goto/16 :goto_0

    .line 14
    :pswitch_4
    new-instance p2, Lcom/im/freechat/ui/chat/holder/a0;

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/t0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/t0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 17
    invoke-direct {p2, p1, v0}, Lcom/im/freechat/ui/chat/holder/a0;-><init>(Lf4/t0;Z)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    new-instance p2, Lcom/im/freechat/ui/chat/holder/z;

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/s0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/s0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 21
    invoke-direct {p2, p1, v0}, Lcom/im/freechat/ui/chat/holder/z;-><init>(Lf4/s0;Z)V

    goto/16 :goto_0

    .line 22
    :pswitch_6
    new-instance p2, Lcom/im/freechat/ui/chat/holder/z0;

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/a1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/a1;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 25
    invoke-direct {p2, p1, v0}, Lcom/im/freechat/ui/chat/holder/z0;-><init>(Lf4/a1;Z)V

    goto/16 :goto_0

    .line 26
    :pswitch_7
    new-instance p2, Lcom/im/freechat/ui/chat/holder/y0;

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/z0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/z0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 29
    invoke-direct {p2, p1, v0}, Lcom/im/freechat/ui/chat/holder/y0;-><init>(Lf4/z0;Z)V

    goto/16 :goto_0

    .line 30
    :pswitch_8
    new-instance p2, Lcom/im/freechat/ui/chat/holder/o0;

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/r0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/r0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 33
    invoke-direct {p2, p1, v0}, Lcom/im/freechat/ui/chat/holder/o0;-><init>(Lf4/r0;Z)V

    goto/16 :goto_0

    .line 34
    :pswitch_9
    new-instance p2, Lcom/im/freechat/ui/chat/holder/x;

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/j0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/j0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 37
    invoke-direct {p2, p1, v0}, Lcom/im/freechat/ui/chat/holder/x;-><init>(Lf4/j0;Z)V

    goto/16 :goto_0

    .line 38
    :pswitch_a
    new-instance p2, Lcom/im/freechat/ui/chat/holder/w;

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/i0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/i0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 41
    invoke-direct {p2, p1, v0}, Lcom/im/freechat/ui/chat/holder/w;-><init>(Lf4/i0;Z)V

    goto/16 :goto_0

    .line 42
    :pswitch_b
    new-instance p2, Lcom/im/freechat/ui/chat/holder/d;

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/c0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/c0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->d:Lkotlin/jvm/functions/Function2;

    .line 45
    iget-boolean v1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 46
    invoke-direct {p2, p1, v0, v1}, Lcom/im/freechat/ui/chat/holder/d;-><init>(Lf4/c0;Lkotlin/jvm/functions/Function2;Z)V

    goto :goto_0

    .line 47
    :pswitch_c
    new-instance p2, Lcom/im/freechat/ui/chat/holder/c;

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/b0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/b0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->d:Lkotlin/jvm/functions/Function2;

    .line 50
    iget-boolean v1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 51
    invoke-direct {p2, p1, v0, v1}, Lcom/im/freechat/ui/chat/holder/c;-><init>(Lf4/b0;Lkotlin/jvm/functions/Function2;Z)V

    goto :goto_0

    .line 52
    :pswitch_d
    new-instance p2, Lcom/im/freechat/ui/chat/holder/f0;

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/l0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/l0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 55
    invoke-direct {p2, p1, v0}, Lcom/im/freechat/ui/chat/holder/f0;-><init>(Lf4/l0;Z)V

    goto :goto_0

    .line 56
    :pswitch_e
    new-instance p2, Lcom/im/freechat/ui/chat/holder/e0;

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/k0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/k0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 59
    invoke-direct {p2, p1, v0}, Lcom/im/freechat/ui/chat/holder/e0;-><init>(Lf4/k0;Z)V

    goto :goto_0

    .line 60
    :pswitch_f
    new-instance p2, Lcom/im/freechat/ui/chat/holder/s0;

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/w0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/w0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 63
    invoke-direct {p2, p1, v0}, Lcom/im/freechat/ui/chat/holder/s0;-><init>(Lf4/w0;Z)V

    goto :goto_0

    .line 64
    :pswitch_10
    new-instance p2, Lcom/im/freechat/ui/chat/holder/r0;

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lf4/v0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/v0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->a:Z

    .line 67
    invoke-direct {p2, p1, v0}, Lcom/im/freechat/ui/chat/holder/r0;-><init>(Lf4/v0;Z)V

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public v(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/holder/BaseChatHolder;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->x0()V

    return-void
.end method

.method public final w(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->j:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final x(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->m:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final y(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->n:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final z(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;->b:Z

    return-void
.end method
