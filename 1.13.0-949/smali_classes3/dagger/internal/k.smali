.class public final Ldagger/internal/k;
.super Ljava/lang/Object;
.source "InstanceFactory.java"

# interfaces
.implements Ldagger/internal/h;
.implements Ld6/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "TT;>;",
        "Ld6/e<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final b:Ldagger/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldagger/internal/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldagger/internal/k;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ldagger/internal/k;->b:Ldagger/internal/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldagger/internal/k;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ldagger/internal/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ldagger/internal/h<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldagger/internal/k;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Ldagger/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ldagger/internal/k;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ldagger/internal/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ldagger/internal/h<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Ldagger/internal/k;->c()Ldagger/internal/k;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ldagger/internal/k;

    invoke-direct {v0, p0}, Ldagger/internal/k;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static c()Ldagger/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldagger/internal/k<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ldagger/internal/k;->b:Ldagger/internal/k;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ldagger/internal/k;->a:Ljava/lang/Object;

    return-object v0
.end method
