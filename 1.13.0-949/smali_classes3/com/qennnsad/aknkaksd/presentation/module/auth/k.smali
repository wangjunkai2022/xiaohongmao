.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/auth/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le5/r3;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Le5/r3;Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/k;->a:Le5/r3;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/k;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/k;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/k;->a:Le5/r3;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/k;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/k;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;->Z(Le5/r3;Lcom/qennnsad/aknkaksd/presentation/module/auth/TestConfigDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/RadioGroup;I)V

    return-void
.end method
