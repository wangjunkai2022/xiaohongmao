.class public final Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$g;
.super Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;
.source "ChatDetailsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$g;",
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
.field public static final b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$g;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$g;

    invoke-direct {v0}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$g;-><init>()V

    sput-object v0, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$g;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a$g;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.RECORD_AUDIO"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment$a;-><init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
