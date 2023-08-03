.class public final Lg5/g;
.super Ljava/lang/Object;
.source "LoginManager_Factory.java"

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
        "Lg5/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;",
            "Lu7/c<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg5/g;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lg5/g;->b:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;)Lg5/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;",
            "Lu7/c<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Lg5/g;"
        }
    .end annotation

    new-instance v0, Lg5/g;

    invoke-direct {v0, p0, p1}, Lg5/g;-><init>(Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/google/gson/Gson;)Lg5/f;
    .locals 1

    new-instance v0, Lg5/f;

    invoke-direct {v0, p0, p1}, Lg5/f;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg5/f;
    .locals 2

    iget-object v0, p0, Lg5/g;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    iget-object v1, p0, Lg5/g;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v0, v1}, Lg5/g;->c(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/google/gson/Gson;)Lg5/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg5/g;->b()Lg5/f;

    move-result-object v0

    return-object v0
.end method
