.class public final synthetic Lcom/im/freechat/ui/chat/group_manager/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic a:Lcom/im/freechat/ui/chat/group_manager/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/ui/chat/group_manager/v;

    invoke-direct {v0}, Lcom/im/freechat/ui/chat/group_manager/v;-><init>()V

    sput-object v0, Lcom/im/freechat/ui/chat/group_manager/v;->a:Lcom/im/freechat/ui/chat/group_manager/v;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerViewModel;->k(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
