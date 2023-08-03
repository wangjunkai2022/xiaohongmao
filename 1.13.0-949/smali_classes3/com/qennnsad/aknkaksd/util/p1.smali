.class public final synthetic Lcom/qennnsad/aknkaksd/util/p1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le5/y2;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/RankItem;

.field public final synthetic c:Lcom/qennnsad/aknkaksd/util/q0;


# direct methods
.method public synthetic constructor <init>(Le5/y2;Lcom/qennnsad/aknkaksd/data/bean/RankItem;Lcom/qennnsad/aknkaksd/util/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/p1;->a:Le5/y2;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/p1;->b:Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/p1;->c:Lcom/qennnsad/aknkaksd/util/q0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/p1;->a:Le5/y2;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/p1;->b:Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/p1;->c:Lcom/qennnsad/aknkaksd/util/q0;

    invoke-static {v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/util/s1;->a(Le5/y2;Lcom/qennnsad/aknkaksd/data/bean/RankItem;Lcom/qennnsad/aknkaksd/util/q0;Landroid/view/View;)V

    return-void
.end method
