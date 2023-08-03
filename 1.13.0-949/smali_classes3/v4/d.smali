.class public final Lv4/d;
.super Ljava/lang/Object;
.source "SVGALogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\t\u001a\u00020\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "Lv4/d;",
        "",
        "Lv4/b;",
        "logImp",
        "b",
        "",
        "isEnabled",
        "d",
        "a",
        "c",
        "<init>",
        "()V",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static a:Lv4/b;

.field private static b:Z

.field public static final c:Lv4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv4/d;

    invoke-direct {v0}, Lv4/d;-><init>()V

    sput-object v0, Lv4/d;->c:Lv4/d;

    .line 2
    new-instance v0, Lv4/a;

    invoke-direct {v0}, Lv4/a;-><init>()V

    sput-object v0, Lv4/d;->a:Lv4/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lv4/b;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    sget-object v0, Lv4/d;->a:Lv4/b;

    return-object v0
.end method

.method public final b(Lv4/b;)Lv4/d;
    .locals 0
    .param p1    # Lv4/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    sput-object p1, Lv4/d;->a:Lv4/b;

    return-object p0
.end method

.method public final c()Z
    .locals 1

    sget-boolean v0, Lv4/d;->b:Z

    return v0
.end method

.method public final d(Z)Lv4/d;
    .locals 0
    .annotation build Lm8/g;
    .end annotation

    sput-boolean p1, Lv4/d;->b:Z

    return-object p0
.end method
