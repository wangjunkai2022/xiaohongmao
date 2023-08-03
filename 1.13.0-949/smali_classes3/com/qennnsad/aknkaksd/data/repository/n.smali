.class public final Lcom/qennnsad/aknkaksd/data/repository/n;
.super Ljava/lang/Object;
.source "SourceFactory_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/t0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lc5/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/t0;",
            ">;",
            "Lu7/c<",
            "Lg5/d;",
            ">;",
            "Lu7/c<",
            "Lc5/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/repository/n;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/repository/n;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/repository/n;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/data/repository/n;->d:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/data/repository/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/t0;",
            ">;",
            "Lu7/c<",
            "Lg5/d;",
            ">;",
            "Lu7/c<",
            "Lc5/b;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/data/repository/n;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/n;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/n;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lg5/a;Lcom/qennnsad/aknkaksd/util/t0;Lg5/d;Lc5/b;)Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/data/repository/m;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/util/t0;Lg5/d;Lc5/b;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 4

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/repository/n;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/repository/n;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qennnsad/aknkaksd/util/t0;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/repository/n;->c:Lu7/c;

    invoke-interface {v2}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5/d;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/data/repository/n;->d:Lu7/c;

    invoke-interface {v3}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc5/b;

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/n;->c(Lg5/a;Lcom/qennnsad/aknkaksd/util/t0;Lg5/d;Lc5/b;)Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/repository/n;->b()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    return-object v0
.end method
