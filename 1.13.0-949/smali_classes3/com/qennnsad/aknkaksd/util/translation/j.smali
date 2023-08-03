.class public final synthetic Lcom/qennnsad/aknkaksd/util/translation/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/j;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/translation/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/j;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/translation/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/translation/h$c$a;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method
