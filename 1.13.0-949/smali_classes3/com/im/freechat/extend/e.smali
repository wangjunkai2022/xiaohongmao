.class public final synthetic Lcom/im/freechat/extend/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/extend/e;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/extend/e;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v0, p1, p2, p3}, Lcom/im/freechat/extend/f;->e(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/DialogInterface;IZ)V

    return-void
.end method
