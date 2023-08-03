.class public final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;
.super Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;
.source "ChatDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;",
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;",
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
.field public static final b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;

    invoke-direct {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;-><init>()V

    sput-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$f;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;-><init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
