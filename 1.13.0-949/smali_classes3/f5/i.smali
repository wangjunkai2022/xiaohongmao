.class public final Lf5/i;
.super Ljava/lang/Object;
.source "SdkModule_ProvideGsonFactory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
    value = "javax.inject.Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Lcom/google/gson/Gson;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lf5/g;


# direct methods
.method public constructor <init>(Lf5/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf5/i;->a:Lf5/g;

    return-void
.end method

.method public static a(Lf5/g;)Lf5/i;
    .locals 1

    new-instance v0, Lf5/i;

    invoke-direct {v0, p0}, Lf5/i;-><init>(Lf5/g;)V

    return-object v0
.end method

.method public static c(Lf5/g;)Lcom/google/gson/Gson;
    .locals 0

    invoke-virtual {p0}, Lf5/g;->b()Lcom/google/gson/Gson;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/p;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/Gson;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/gson/Gson;
    .locals 1

    iget-object v0, p0, Lf5/i;->a:Lf5/g;

    invoke-static {v0}, Lf5/i;->c(Lf5/g;)Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lf5/i;->b()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method
