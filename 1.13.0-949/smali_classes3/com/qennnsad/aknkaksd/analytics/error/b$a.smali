.class public final Lcom/qennnsad/aknkaksd/analytics/error/b$a;
.super Ljava/lang/Object;
.source "ErrorReporter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/analytics/error/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u00028FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/analytics/error/b$a;",
        "",
        "Lcom/qennnsad/aknkaksd/analytics/error/b;",
        "a",
        "()Lcom/qennnsad/aknkaksd/analytics/error/b;",
        "getCurrentReporter$annotations",
        "()V",
        "currentReporter",
        "<init>",
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
.field static final synthetic a:Lcom/qennnsad/aknkaksd/analytics/error/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/analytics/error/b$a;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/analytics/error/b$a;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/analytics/error/b$a;->a:Lcom/qennnsad/aknkaksd/analytics/error/b$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final a()Lcom/qennnsad/aknkaksd/analytics/error/b;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/error/d;->b:Lcom/qennnsad/aknkaksd/analytics/error/d;

    return-object v0
.end method
