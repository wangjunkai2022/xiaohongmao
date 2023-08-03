.class public final Lcom/giphy/sdk/core/network/api/Constants;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/core/network/api/Constants$Environment;,
        Lcom/giphy/sdk/core/network/api/Constants$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001c\u0003B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u000f\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\n\u001a\u0004\u0008\u000e\u0010\u000cR\u001f\u0010\u0012\u001a\n \u0010*\u0004\u0018\u00010\u00080\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\n\u001a\u0004\u0008\u0011\u0010\u000cR\u001a\u0010\u0017\u001a\u00020\u00138\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0003\u0010\u0016R\u001a\u0010\u0018\u001a\u00020\u00138\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0015\u001a\u0004\u0008\u0014\u0010\u0016R\u001a\u0010\u0019\u001a\u00020\u00138\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0015\u001a\u0004\u0008\t\u0010\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/giphy/sdk/core/network/api/Constants;",
        "",
        "Lcom/giphy/sdk/core/network/api/Constants$Environment;",
        "a",
        "Lcom/giphy/sdk/core/network/api/Constants$Environment;",
        "c",
        "()Lcom/giphy/sdk/core/network/api/Constants$Environment;",
        "ENVIRONMENT",
        "Landroid/net/Uri;",
        "b",
        "Landroid/net/Uri;",
        "g",
        "()Landroid/net/Uri;",
        "SERVER_URL",
        "d",
        "MOBILE_API_URL",
        "kotlin.jvm.PlatformType",
        "f",
        "PINGBACK_SERVER_URL",
        "",
        "e",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "API_KEY",
        "PINGBACK_ID",
        "CONTENT_TYPE",
        "<init>",
        "()V",
        "Environment",
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
.field private static final a:Lcom/giphy/sdk/core/network/api/Constants$Environment;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final b:Landroid/net/Uri;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final c:Landroid/net/Uri;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final d:Landroid/net/Uri;

.field private static final e:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final f:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final g:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final h:Lcom/giphy/sdk/core/network/api/Constants;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/giphy/sdk/core/network/api/Constants;

    invoke-direct {v0}, Lcom/giphy/sdk/core/network/api/Constants;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/network/api/Constants;->h:Lcom/giphy/sdk/core/network/api/Constants;

    .line 2
    sget-object v0, Lcom/giphy/sdk/core/network/api/Constants$Environment;->PROD:Lcom/giphy/sdk/core/network/api/Constants$Environment;

    sput-object v0, Lcom/giphy/sdk/core/network/api/Constants;->a:Lcom/giphy/sdk/core/network/api/Constants$Environment;

    const-string v0, "https://api.giphy.com"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(\"https://api.giphy.com\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/giphy/sdk/core/network/api/Constants;->b:Landroid/net/Uri;

    const-string v0, "https://x.giphy.com"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(\"https://x.giphy.com\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/giphy/sdk/core/network/api/Constants;->c:Landroid/net/Uri;

    const-string v0, "https://pingback.giphy.com"

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/giphy/sdk/core/network/api/Constants;->d:Landroid/net/Uri;

    const-string v0, "api_key"

    .line 6
    sput-object v0, Lcom/giphy/sdk/core/network/api/Constants;->e:Ljava/lang/String;

    const-string v0, "pingback_id"

    .line 7
    sput-object v0, Lcom/giphy/sdk/core/network/api/Constants;->f:Ljava/lang/String;

    const-string v0, "Content-Type"

    .line 8
    sput-object v0, Lcom/giphy/sdk/core/network/api/Constants;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/core/network/api/Constants;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/core/network/api/Constants;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/giphy/sdk/core/network/api/Constants$Environment;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/core/network/api/Constants;->a:Lcom/giphy/sdk/core/network/api/Constants$Environment;

    return-object v0
.end method

.method public final d()Landroid/net/Uri;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/core/network/api/Constants;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/core/network/api/Constants;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/core/network/api/Constants;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public final g()Landroid/net/Uri;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/giphy/sdk/core/network/api/Constants;->b:Landroid/net/Uri;

    return-object v0
.end method
