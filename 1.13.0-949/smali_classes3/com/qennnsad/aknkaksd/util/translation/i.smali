.class public final synthetic Lcom/qennnsad/aknkaksd/util/translation/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/util/translation/h;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/util/translation/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/translation/i;->a:Lcom/qennnsad/aknkaksd/util/translation/h;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/translation/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/translation/i;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/util/translation/i;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/qennnsad/aknkaksd/util/translation/i;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/translation/i;->a:Lcom/qennnsad/aknkaksd/util/translation/h;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/translation/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/translation/i;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/translation/i;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/translation/i;->e:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qennnsad/aknkaksd/util/translation/h$c;->a(Lcom/qennnsad/aknkaksd/util/translation/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
