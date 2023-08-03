.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;


# instance fields
.field public final synthetic a:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/f;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/f;->a:[Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;->y0([Ljava/lang/String;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method
