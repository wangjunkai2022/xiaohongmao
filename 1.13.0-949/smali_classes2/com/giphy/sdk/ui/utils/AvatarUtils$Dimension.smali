.class public final enum Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;
.super Ljava/lang/Enum;
.source "AvatarUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/ui/utils/AvatarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Dimension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getSize",
        "()Ljava/lang/String;",
        "size",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Small",
        "Medium",
        "Big",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final enum Big:Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

.field public static final enum Medium:Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

.field public static final enum Small:Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

.field private static final synthetic b:[Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    new-instance v1, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    const-string v2, "Small"

    const/4 v3, 0x0

    const-string v4, "36h"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;->Small:Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    const-string v2, "Medium"

    const/4 v3, 0x1

    const-string v4, "80h"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;->Medium:Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    aput-object v1, v0, v3

    new-instance v1, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    const-string v2, "Big"

    const/4 v3, 0x2

    const-string v4, "200h"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;->Big:Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    aput-object v1, v0, v3

    sput-object v0, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;->b:[Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;
    .locals 1

    const-class v0, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    return-object p0
.end method

.method public static values()[Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;->b:[Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    invoke-virtual {v0}, [Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    return-object v0
.end method


# virtual methods
.method public final getSize()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;->a:Ljava/lang/String;

    return-object v0
.end method
