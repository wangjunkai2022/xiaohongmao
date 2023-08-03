.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/room/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/h0;->a:Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/room/h0;->a:Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;->d(Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
