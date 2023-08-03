.class public final synthetic Lcom/qennnsad/aknkaksd/util/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/g;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/h0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/h0;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/h0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/h0;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/h0;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/h0;->c:Ljava/lang/String;

    check-cast p1, Lio/reactivex/disposables/c;

    invoke-static {v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/util/k0;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lio/reactivex/disposables/c;)V

    return-void
.end method
