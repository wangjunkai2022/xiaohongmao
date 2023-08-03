.class public final synthetic Lcom/im/freechat/ui/chat/userprofile/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic a:Lcom/im/freechat/ui/chat/userprofile/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/ui/chat/userprofile/l;

    invoke-direct {v0}, Lcom/im/freechat/ui/chat/userprofile/l;-><init>()V

    sput-object v0, Lcom/im/freechat/ui/chat/userprofile/l;->a:Lcom/im/freechat/ui/chat/userprofile/l;

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

    invoke-static {p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
