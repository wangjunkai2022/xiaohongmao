.class public final Lcom/qennnsad/aknkaksd/presentation/ui/main/v;
.super Ljava/lang/Object;
.source "MainViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;",
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
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/w;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/user/w;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/c;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/w;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/user/w;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->d:Lu7/c;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->e:Lu7/c;

    .line 7
    iput-object p6, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->f:Lu7/c;

    .line 8
    iput-object p7, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->g:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/presentation/ui/main/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/c;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/app/w;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/user/w;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/presentation/ui/main/v;"
        }
    .end annotation

    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v8
.end method

.method public static c(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/c;Lcom/qennnsad/aknkaksd/domain/usecase/app/w;Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;)Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;
    .locals 9

    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/c;Lcom/qennnsad/aknkaksd/domain/usecase/app/w;Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;)V

    return-object v8
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;
    .locals 8

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lg5/a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->b:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/qennnsad/aknkaksd/domain/usecase/app/c;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->c:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/qennnsad/aknkaksd/domain/usecase/app/w;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->d:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->e:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/qennnsad/aknkaksd/domain/usecase/user/w;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->f:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->g:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;

    invoke-static/range {v1 .. v7}, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->c(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/c;Lcom/qennnsad/aknkaksd/domain/usecase/app/w;Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;)Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/v;->b()Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;

    move-result-object v0

    return-object v0
.end method
