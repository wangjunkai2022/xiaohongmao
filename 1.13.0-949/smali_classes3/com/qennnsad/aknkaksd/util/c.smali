.class public final synthetic Lcom/qennnsad/aknkaksd/util/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

.field public final synthetic c:I

.field public final synthetic d:Lcom/qennnsad/aknkaksd/util/animations/f;

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:Ljava/lang/Runnable;

.field public final synthetic g:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;ILcom/qennnsad/aknkaksd/util/animations/f;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/c;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/c;->b:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    iput p3, p0, Lcom/qennnsad/aknkaksd/util/c;->c:I

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/util/c;->d:Lcom/qennnsad/aknkaksd/util/animations/f;

    iput-object p5, p0, Lcom/qennnsad/aknkaksd/util/c;->e:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/qennnsad/aknkaksd/util/c;->f:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/qennnsad/aknkaksd/util/c;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/c;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/c;->b:Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;

    iget v2, p0, Lcom/qennnsad/aknkaksd/util/c;->c:I

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/c;->d:Lcom/qennnsad/aknkaksd/util/animations/f;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/c;->e:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/util/c;->f:Ljava/lang/Runnable;

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/util/c;->g:Ljava/lang/Runnable;

    move-object v7, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, Lcom/qennnsad/aknkaksd/util/l;->a(Ljava/util/ArrayList;Lcom/qennnsad/aknkaksd/util/animations/GiftAnimationUtil;ILcom/qennnsad/aknkaksd/util/animations/f;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
