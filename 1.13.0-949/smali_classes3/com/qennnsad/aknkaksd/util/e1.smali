.class public final synthetic Lcom/qennnsad/aknkaksd/util/e1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lq7/g;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/e1;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/e1;->a:Ljava/lang/Runnable;

    check-cast p1, Lkotlin/Unit;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/f1;->a(Ljava/lang/Runnable;Lkotlin/Unit;)V

    return-void
.end method
