.class final Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$b;
.super Lkotlin/jvm/internal/Lambda;
.source "GroupManagerFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly8/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Ly8/a;",
        "invoke",
        "()Ly8/a;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$b;

    invoke-direct {v0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$b;-><init>()V

    sput-object v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$b;->a:Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment$b;->invoke()Ly8/a;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ly8/a;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x124f8

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ly8/b;->b([Ljava/lang/Object;)Ly8/a;

    move-result-object v0

    return-object v0
.end method
