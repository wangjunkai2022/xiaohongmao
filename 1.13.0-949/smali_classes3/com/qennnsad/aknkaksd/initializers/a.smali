.class public final Lcom/qennnsad/aknkaksd/initializers/a;
.super Ljava/lang/Object;
.source "FrescoInitializer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/initializers/a;",
        "",
        "Lcom/qennnsad/aknkaksd/util/fresco/b;",
        "b",
        "Lcom/qennnsad/aknkaksd/util/fresco/b;",
        "a",
        "()Lcom/qennnsad/aknkaksd/util/fresco/b;",
        "frescoMemoryTrimmableRegistry",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/initializers/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final b:Lcom/qennnsad/aknkaksd/util/fresco/b;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/initializers/a;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/initializers/a;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/initializers/a;->a:Lcom/qennnsad/aknkaksd/initializers/a;

    new-instance v0, Lcom/qennnsad/aknkaksd/util/fresco/b;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/util/fresco/b;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/initializers/a;->b:Lcom/qennnsad/aknkaksd/util/fresco/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/qennnsad/aknkaksd/util/fresco/b;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/initializers/a;->b:Lcom/qennnsad/aknkaksd/util/fresco/b;

    return-object v0
.end method
