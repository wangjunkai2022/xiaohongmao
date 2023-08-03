.class public Lcom/yalantis/ucrop/e$j;
.super Ljava/lang/Object;
.source "UCropFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public a:I

.field public b:Landroid/content/Intent;

.field final synthetic c:Lcom/yalantis/ucrop/e;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/e;ILandroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yalantis/ucrop/e$j;->c:Lcom/yalantis/ucrop/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/yalantis/ucrop/e$j;->a:I

    .line 3
    iput-object p3, p0, Lcom/yalantis/ucrop/e$j;->b:Landroid/content/Intent;

    return-void
.end method
