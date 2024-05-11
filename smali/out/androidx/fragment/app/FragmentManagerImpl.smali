.class final Landroidx/fragment/app/FragmentManagerImpl;
.super Landroidx/fragment/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;,
        Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;,
        Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;,
        Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;,
        Landroidx/fragment/app/FragmentManagerImpl$FragmentTag;,
        Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    }
.end annotation


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"

.field static sAnimationListenerField:Ljava/lang/reflect/Field;


# instance fields
.field mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroidx/fragment/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroidx/fragment/app/FragmentHostCallback;

.field private final mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;",
            ">;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroidx/fragment/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroidx/fragment/app/Fragment;

.field mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mStopped:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 664
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    .line 706
    const/4 v0, 0x0

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1129
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1130
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 1131
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 1132
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 663
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;-><init>()V

    .line 685
    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 697
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 700
    iput v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 722
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 730
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManagerImpl$1;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    .line 4063
    return-void
.end method

.method private addAddedFragments(Landroidx/collection/ArraySet;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2637
    .local p1, "added":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 2638
    return-void

    .line 2641
    :cond_6
    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2642
    .local v0, "state":I
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2643
    .local v1, "numAdded":I
    const/4 v2, 0x0

    move v8, v2

    .local v8, "i":I
    :goto_13
    if-ge v8, v1, :cond_43

    .line 2644
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 2645
    .local v9, "fragment":Landroidx/fragment/app/Fragment;
    iget v2, v9, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v2, v0, :cond_40

    .line 2646
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v5

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2648
    iget-object v2, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_40

    iget-boolean v2, v9, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v2, :cond_40

    iget-boolean v2, v9, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_40

    .line 2649
    invoke-virtual {p1, v9}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2643
    .end local v9    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 2653
    .end local v8    # "i":I
    :cond_43
    return-void
.end method

.method private animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
    .registers 9
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "anim"    # Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .param p3, "newState"    # I

    .line 1630
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1631
    .local v0, "viewToAnimate":Landroid/view/View;
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1632
    .local v1, "container":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1633
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1634
    iget-object v2, p2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_2f

    .line 1635
    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;

    iget-object v3, p2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-direct {v2, v3, v1, v0}, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimator;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1637
    .local v2, "animation":Landroid/view/animation/Animation;
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1638
    invoke-static {v2}, Landroidx/fragment/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v3

    .line 1639
    .local v3, "listener":Landroid/view/animation/Animation$AnimationListener;
    new-instance v4, Landroidx/fragment/app/FragmentManagerImpl$2;

    invoke-direct {v4, p0, v3, v1, p1}, Landroidx/fragment/app/FragmentManagerImpl$2;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1659
    invoke-static {v0, p2}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1660
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1661
    .end local v2    # "animation":Landroid/view/animation/Animation;
    .end local v3    # "listener":Landroid/view/animation/Animation$AnimationListener;
    goto :goto_4b

    .line 1662
    :cond_2f
    iget-object v2, p2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 1663
    .local v2, "animator":Landroid/animation/Animator;
    iget-object v3, p2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1664
    new-instance v3, Landroidx/fragment/app/FragmentManagerImpl$3;

    invoke-direct {v3, p0, v1, v0, p1}, Landroidx/fragment/app/FragmentManagerImpl$3;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1677
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1678
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, p2}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1679
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 1681
    .end local v2    # "animator":Landroid/animation/Animator;
    :goto_4b
    return-void
.end method

.method private burpActive()V
    .registers 4

    .line 3190
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_20

    .line 3191
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_20

    .line 3192
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 3193
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 3191
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3197
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method private checkStateLoss()V
    .registers 4

    .line 2079
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_26

    .line 2083
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 2087
    return-void

    .line 2084
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2080
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanupExec()V
    .registers 2

    .line 2258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2259
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2260
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2261
    return-void
.end method

.method private dispatchStateChange(I)V
    .registers 4
    .param p1, "nextState"    # I

    .line 3268
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3269
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_e

    .line 3271
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 3272
    nop

    .line 3273
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3274
    return-void

    .line 3271
    :catchall_e
    move-exception v0

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v0
.end method

.method private endAnimatingAwayFragments()V
    .registers 13

    .line 2671
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2672
    .local v0, "numFragments":I
    :goto_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_50

    .line 2673
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2674
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_4d

    .line 2675
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 2677
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v9

    .line 2678
    .local v9, "stateAfterAnimating":I
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v10

    .line 2679
    .local v10, "animatingAway":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    .line 2680
    .local v11, "animation":Landroid/view/animation/Animation;
    if-eqz v11, :cond_31

    .line 2681
    invoke-virtual {v11}, Landroid/view/animation/Animation;->cancel()V

    .line 2684
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 2686
    :cond_31
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 2687
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v2

    move v5, v9

    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .end local v9    # "stateAfterAnimating":I
    .end local v10    # "animatingAway":Landroid/view/View;
    .end local v11    # "animation":Landroid/view/animation/Animation;
    goto :goto_4d

    .line 2688
    :cond_3f
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 2689
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    nop

    .line 2672
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_4d
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2693
    .end local v1    # "i":I
    :cond_50
    return-void
.end method

.method private ensureExecReady(Z)V
    .registers 4
    .param p1, "allowStateLoss"    # Z

    .line 2206
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    if-nez v0, :cond_4f

    .line 2210
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_47

    .line 2214
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3f

    .line 2218
    if-nez p1, :cond_1d

    .line 2219
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2222
    :cond_1d
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_2f

    .line 2223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    .line 2224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    .line 2226
    :cond_2f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2228
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_34
    invoke-direct {p0, v1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    .line 2230
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2231
    nop

    .line 2232
    return-void

    .line 2230
    :catchall_3b
    move-exception v1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v1

    .line 2215
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2211
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment host has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2207
    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 9
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2614
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p1, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2d

    .line 2615
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 2616
    .local v1, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2617
    .local v2, "isPop":Z
    const/4 v3, 0x1

    if-eqz v2, :cond_24

    .line 2618
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2621
    add-int/lit8 v4, p3, -0x1

    if-ne v0, v4, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    .line 2622
    .local v3, "moveToState":Z
    :goto_20
    invoke-virtual {v1, v3}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    .line 2623
    .end local v3    # "moveToState":Z
    goto :goto_2a

    .line 2624
    :cond_24
    invoke-virtual {v1, v3}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2625
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    .line 2614
    .end local v1    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v2    # "isPop":Z
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2628
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 22
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2386
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v11, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2387
    .local v11, "allowReordering":Z
    const/4 v0, 0x0

    .line 2388
    .local v0, "addToBackStack":Z
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v1, :cond_1f

    .line 2389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_22

    .line 2391
    :cond_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2393
    :goto_22
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v2, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2394
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 2395
    .local v1, "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    move/from16 v2, p3

    move v12, v0

    move-object v13, v1

    .end local v0    # "addToBackStack":Z
    .end local v1    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .local v2, "recordNum":I
    .local v12, "addToBackStack":Z
    .local v13, "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    :goto_31
    const/4 v14, 0x1

    if-ge v2, v10, :cond_61

    .line 2396
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 2397
    .local v0, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2398
    .local v1, "isPop":Z
    if-nez v1, :cond_4e

    .line 2399
    iget-object v3, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v13}, Landroidx/fragment/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    move-object v13, v3

    .end local v13    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .local v3, "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    goto :goto_55

    .line 2401
    .end local v3    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    .restart local v13    # "oldPrimaryNav":Landroidx/fragment/app/Fragment;
    :cond_4e
    iget-object v3, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v13}, Landroidx/fragment/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    move-object v13, v3

    .line 2403
    :goto_55
    if-nez v12, :cond_5d

    iget-boolean v3, v0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v3, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v14, 0x0

    :cond_5d
    :goto_5d
    move v12, v14

    .line 2395
    .end local v0    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v1    # "isPop":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 2405
    .end local v2    # "recordNum":I
    :cond_61
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2407
    if-nez v11, :cond_76

    .line 2408
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2411
    :cond_76
    invoke-static/range {p1 .. p4}, Landroidx/fragment/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2413
    move/from16 v15, p4

    .line 2414
    .local v15, "postponeIndex":I
    if-eqz v11, :cond_9b

    .line 2415
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    move-object v5, v0

    .line 2416
    .local v5, "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    invoke-direct {v6, v5}, Landroidx/fragment/app/FragmentManagerImpl;->addAddedFragments(Landroidx/collection/ArraySet;)V

    .line 2417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v16, v5

    .end local v5    # "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    .local v16, "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I

    move-result v15

    .line 2419
    move-object/from16 v0, v16

    .end local v16    # "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    .local v0, "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    invoke-direct {v6, v0}, Landroidx/fragment/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V

    .line 2422
    .end local v0    # "addedFragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    :cond_9b
    if-eq v15, v9, :cond_b1

    if-eqz v11, :cond_b1

    .line 2424
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v4, v15

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2426
    iget v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v6, v0, v14}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2429
    :cond_b1
    move/from16 v0, p3

    .local v0, "recordNum":I
    :goto_b3
    if-ge v0, v10, :cond_d9

    .line 2430
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 2431
    .local v1, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2432
    .local v2, "isPop":Z
    if-eqz v2, :cond_d3

    iget v3, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v3, :cond_d3

    .line 2433
    iget v3, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v3}, Landroidx/fragment/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 2434
    const/4 v3, -0x1

    iput v3, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 2436
    :cond_d3
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->runOnCommitRunnables()V

    .line 2429
    .end local v1    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v2    # "isPop":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    .line 2438
    .end local v0    # "recordNum":I
    :cond_d9
    if-eqz v12, :cond_de

    .line 2439
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 2441
    :cond_de
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2292
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2293
    .local v0, "numPostponed":I
    :goto_b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_77

    .line 2294
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    .line 2295
    .local v3, "listener":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    const/4 v4, -0x1

    if-eqz p1, :cond_35

    iget-boolean v5, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v5, :cond_35

    .line 2296
    iget-object v5, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2297
    .local v5, "index":I
    if-eq v5, v4, :cond_35

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 2298
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    .line 2299
    goto :goto_74

    .line 2302
    .end local v5    # "index":I
    :cond_35
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v5

    if-nez v5, :cond_49

    if-eqz p1, :cond_74

    iget-object v5, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    .line 2303
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 2304
    :cond_49
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2305
    add-int/lit8 v2, v2, -0x1

    .line 2306
    add-int/lit8 v0, v0, -0x1

    .line 2308
    if-eqz p1, :cond_71

    iget-boolean v5, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v5, :cond_71

    iget-object v5, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    .line 2309
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move v6, v5

    .local v6, "index":I
    if-eq v5, v4, :cond_71

    .line 2310
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 2312
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_74

    .line 2314
    .end local v6    # "index":I
    :cond_71
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    .line 2293
    .end local v3    # "listener":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_74
    :goto_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2318
    .end local v2    # "i":I
    :cond_77
    return-void
.end method

.method private findFragmentUnder(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 9
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 2586
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2587
    .local v0, "container":Landroid/view/ViewGroup;
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2589
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v0, :cond_29

    if-nez v1, :cond_a

    goto :goto_29

    .line 2593
    :cond_a
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2594
    .local v3, "fragmentIndex":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_12
    if-ltz v4, :cond_28

    .line 2595
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 2596
    .local v5, "underFragment":Landroidx/fragment/app/Fragment;
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v6, v0, :cond_25

    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_25

    .line 2598
    return-object v5

    .line 2594
    .end local v5    # "underFragment":Landroidx/fragment/app/Fragment;
    :cond_25
    add-int/lit8 v4, v4, -0x1

    goto :goto_12

    .line 2601
    .end local v4    # "i":I
    :cond_28
    return-object v2

    .line 2590
    .end local v3    # "fragmentIndex":I
    :cond_29
    :goto_29
    return-object v2
.end method

.method private forcePostponedTransactions()V
    .registers 3

    .line 2659
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 2660
    :goto_4
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2661
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_4

    .line 2664
    :cond_19
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2707
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 2708
    .local v0, "didSomething":Z
    monitor-enter p0

    .line 2709
    :try_start_2
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_38

    .line 2713
    :cond_d
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2714
    .local v1, "numActions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_26

    .line 2715
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v3, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2714
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2717
    .end local v2    # "i":I
    :cond_26
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2718
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2719
    .end local v1    # "numActions":I
    monitor-exit p0

    .line 2720
    return v0

    .line 2710
    :cond_38
    :goto_38
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 2719
    :catchall_3b
    move-exception v1

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_3b

    goto :goto_3f

    :goto_3e
    throw v1

    :goto_3f
    goto :goto_3e
.end method

.method private static getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .registers 5
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .line 1298
    const-string v0, "FragmentManager"

    const/4 v1, 0x0

    .line 1300
    .local v1, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    :try_start_3
    sget-object v2, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_15

    .line 1301
    const-class v2, Landroid/view/animation/Animation;

    const-string v3, "mListener"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    .line 1302
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1304
    :cond_15
    sget-object v2, Landroidx/fragment/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation$AnimationListener;
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_1d} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_1d} :catch_1f

    move-object v1, v2

    .line 1309
    :goto_1e
    goto :goto_2d

    .line 1307
    :catch_1f
    move-exception v2

    .line 1308
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Cannot access Animation\'s mListener field"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 1305
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_26
    move-exception v2

    .line 1306
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "No field with the name mListener is found in Animation class"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_1e

    .line 1310
    :goto_2d
    return-object v1
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # F
    .param p2, "end"    # F

    .line 1152
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1153
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1154
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1155
    new-instance v1, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v1, v0}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v1
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "startAlpha"    # F
    .param p4, "endAlpha"    # F

    .line 1138
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1139
    .local v0, "set":Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v10

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1141
    .local v1, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v2, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1142
    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1143
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1144
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1145
    .local v4, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v5, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1146
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1147
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v2, v0}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v2
.end method

.method private makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2451
    .local p1, "fragments":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->size()I

    move-result v0

    .line 2452
    .local v0, "numAdded":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_22

    .line 2453
    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2454
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v3, :cond_1f

    .line 2455
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 2456
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2457
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2452
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    .end local v3    # "view":Landroid/view/View;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2460
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .registers 8
    .param p0, "anim"    # Landroid/animation/Animator;

    .line 754
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 755
    return v0

    .line 757
    :cond_4
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    .line 758
    move-object v1, p0

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 759
    .local v1, "valueAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 760
    .local v3, "values":[Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    array-length v5, v3

    if-ge v4, v5, :cond_26

    .line 761
    aget-object v5, v3, v4

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "alpha"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 762
    return v2

    .line 760
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .end local v1    # "valueAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v4    # "i":I
    :cond_26
    goto :goto_49

    .line 765
    :cond_27
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_49

    .line 766
    move-object v1, p0

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    .line 767
    .local v1, "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4a

    .line 768
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Landroidx/fragment/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 769
    return v2

    .line 767
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 765
    .end local v1    # "animList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v3    # "i":I
    :cond_49
    :goto_49
    nop

    .line 773
    :cond_4a
    return v0
.end method

.method static modifiesAlpha(Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .registers 5
    .param p0, "anim"    # Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    .line 738
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v0, v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 739
    return v1

    .line 740
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    instance-of v0, v0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2b

    .line 741
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 742
    .local v0, "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 743
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_26

    .line 744
    return v1

    .line 742
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 747
    .end local v2    # "i":I
    :cond_29
    const/4 v1, 0x0

    return v1

    .line 749
    .end local v0    # "anims":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    :cond_2b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-static {v0}, Landroidx/fragment/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v0

    return v0
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .line 867
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 868
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 870
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1c

    if-gez p2, :cond_1c

    if-nez p1, :cond_1c

    .line 873
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->peekChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 874
    .local v1, "childManager":Landroidx/fragment/app/FragmentManager;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 876
    return v0

    .line 880
    .end local v1    # "childManager":Landroidx/fragment/app/FragmentManager;
    :cond_1c
    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    .line 881
    .local v1, "executePop":Z
    if-eqz v1, :cond_3c

    .line 882
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 884
    :try_start_2c
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_37

    .line 886
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 887
    goto :goto_3c

    .line 886
    :catchall_37
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    .line 890
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 891
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    .line 892
    return v1
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I
    .registers 14
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .line 2477
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local p5, "added":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/fragment/app/Fragment;>;"
    move v0, p4

    .line 2478
    .local v0, "postponeIndex":I
    add-int/lit8 v1, p4, -0x1

    .local v1, "i":I
    :goto_3
    if-lt v1, p3, :cond_5a

    .line 2479
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 2480
    .local v2, "record":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2481
    .local v3, "isPop":Z
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->isPostponed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_26

    add-int/lit8 v4, v1, 0x1

    .line 2482
    invoke-virtual {v2, p1, v4, p4}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    .line 2483
    .local v4, "isPostponed":Z
    :goto_27
    if-eqz v4, :cond_57

    .line 2484
    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v6, :cond_34

    .line 2485
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 2487
    :cond_34
    new-instance v6, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v6, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroidx/fragment/app/BackStackRecord;Z)V

    .line 2489
    .local v6, "listener":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    iget-object v7, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2490
    invoke-virtual {v2, v6}, Landroidx/fragment/app/BackStackRecord;->setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    .line 2493
    if-eqz v3, :cond_47

    .line 2494
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    goto :goto_4a

    .line 2496
    :cond_47
    invoke-virtual {v2, v5}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    .line 2500
    :goto_4a
    add-int/lit8 v0, v0, -0x1

    .line 2501
    if-eq v1, v0, :cond_54

    .line 2502
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2503
    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2507
    :cond_54
    invoke-direct {p0, p5}, Landroidx/fragment/app/FragmentManagerImpl;->addAddedFragments(Landroidx/collection/ArraySet;)V

    .line 2478
    .end local v2    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v3    # "isPop":Z
    .end local v4    # "isPostponed":Z
    .end local v6    # "listener":Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
    :cond_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2510
    .end local v1    # "i":I
    :cond_5a
    return v0
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2336
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_6f

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6f

    .line 2340
    :cond_9
    if-eqz p2, :cond_67

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_67

    .line 2345
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2347
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2348
    .local v0, "numRecords":I
    const/4 v1, 0x0

    .line 2349
    .local v1, "startIndex":I
    const/4 v2, 0x0

    .local v2, "recordNum":I
    :goto_1e
    if-ge v2, v0, :cond_61

    .line 2350
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v3, v3, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2351
    .local v3, "canReorder":Z
    if-nez v3, :cond_5e

    .line 2353
    if-eq v1, v2, :cond_2f

    .line 2354
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2358
    :cond_2f
    add-int/lit8 v4, v2, 0x1

    .line 2359
    .local v4, "reorderingEnd":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 2360
    :goto_3d
    if-ge v4, v0, :cond_58

    .line 2361
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 2362
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v5, v5, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_58

    .line 2363
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 2366
    :cond_58
    invoke-direct {p0, p1, p2, v2, v4}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2367
    move v1, v4

    .line 2368
    add-int/lit8 v2, v4, -0x1

    .line 2349
    .end local v3    # "canReorder":Z
    .end local v4    # "reorderingEnd":I
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2371
    .end local v2    # "recordNum":I
    :cond_61
    if-eq v1, v0, :cond_66

    .line 2372
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2374
    :cond_66
    return-void

    .line 2341
    .end local v0    # "numRecords":I
    .end local v1    # "startIndex":I
    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2337
    :cond_6f
    :goto_6f
    return-void
.end method

.method public static reverseTransit(I)I
    .registers 2
    .param p0, "transit"    # I

    .line 3655
    const/4 v0, 0x0

    .line 3656
    .local v0, "rev":I
    sparse-switch p0, :sswitch_data_10

    goto :goto_e

    .line 3661
    :sswitch_5
    const/16 v0, 0x1001

    .line 3662
    goto :goto_e

    .line 3664
    :sswitch_8
    const/16 v0, 0x1003

    goto :goto_e

    .line 3658
    :sswitch_b
    const/16 v0, 0x2002

    .line 3659
    nop

    .line 3667
    :goto_e
    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x1001 -> :sswitch_b
        0x1003 -> :sswitch_8
        0x2002 -> :sswitch_5
    .end sparse-switch
.end method

.method private static setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    .line 1276
    if-eqz p0, :cond_30

    if-nez p1, :cond_5

    goto :goto_30

    .line 1279
    :cond_5
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1280
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_1a

    .line 1281
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v1, Landroidx/fragment/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;

    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManagerImpl$AnimatorOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2f

    .line 1283
    :cond_1a
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroidx/fragment/app/FragmentManagerImpl;->getAnimationListener(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 1287
    .local v0, "originalListener":Landroid/view/animation/Animation$AnimationListener;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1288
    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v2, p0, v0}, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1292
    .end local v0    # "originalListener":Landroid/view/animation/Animation$AnimationListener;
    :cond_2f
    :goto_2f
    return-void

    .line 1277
    :cond_30
    :goto_30
    return-void
.end method

.method private static setRetaining(Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .registers 5
    .param p0, "nonConfig"    # Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2814
    if-nez p0, :cond_3

    .line 2815
    return-void

    .line 2817
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 2818
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    if-eqz v0, :cond_1d

    .line 2819
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2820
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/fragment/app/Fragment;->mRetaining:Z

    .line 2821
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    goto :goto_d

    .line 2823
    :cond_1d
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v1

    .line 2824
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    if-eqz v1, :cond_37

    .line 2825
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2826
    .local v3, "child":Landroidx/fragment/app/FragmentManagerNonConfig;
    invoke-static {v3}, Landroidx/fragment/app/FragmentManagerImpl;->setRetaining(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 2827
    .end local v3    # "child":Landroidx/fragment/app/FragmentManagerNonConfig;
    goto :goto_27

    .line 2829
    :cond_37
    return-void
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "anim"    # Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    .line 777
    const/4 v0, 0x0

    if-eqz p0, :cond_22

    if-nez p1, :cond_6

    goto :goto_22

    .line 780
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_20

    .line 781
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_20

    .line 782
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 783
    invoke-static {p1}, Landroidx/fragment/app/FragmentManagerImpl;->modifiesAlpha(Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    nop

    :goto_21
    return v0

    .line 778
    :cond_22
    :goto_22
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .registers 10
    .param p1, "ex"    # Ljava/lang/RuntimeException;

    .line 787
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v0, Landroidx/core/util/LogWriter;

    invoke-direct {v0, v1}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 790
    .local v0, "logw":Landroidx/core/util/LogWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 791
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    const-string v4, "Failed dumping state"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "  "

    if-eqz v3, :cond_2d

    .line 793
    :try_start_22
    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v7, v6, v2, v5}, Landroidx/fragment/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_2c

    .line 794
    :catch_28
    move-exception v3

    .line 795
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2c
    goto :goto_37

    .line 799
    :cond_2d
    :try_start_2d
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {p0, v7, v6, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    .line 802
    goto :goto_37

    .line 800
    :catch_33
    move-exception v3

    .line 801
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_37
    throw p1
.end method

.method public static transitToStyleIndex(IZ)I
    .registers 4
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .line 3679
    const/4 v0, -0x1

    .line 3680
    .local v0, "animAttr":I
    sparse-switch p0, :sswitch_data_1c

    goto :goto_1a

    .line 3685
    :sswitch_5
    if-eqz p1, :cond_9

    const/4 v1, 0x3

    goto :goto_a

    :cond_9
    const/4 v1, 0x4

    :goto_a
    move v0, v1

    .line 3686
    goto :goto_1a

    .line 3688
    :sswitch_c
    if-eqz p1, :cond_10

    const/4 v1, 0x5

    goto :goto_11

    :cond_10
    const/4 v1, 0x6

    :goto_11
    move v0, v1

    goto :goto_1a

    .line 3682
    :sswitch_13
    if-eqz p1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x2

    :goto_18
    move v0, v1

    .line 3683
    nop

    .line 3691
    :goto_1a
    return v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1001 -> :sswitch_13
        0x1003 -> :sswitch_c
        0x2002 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroidx/fragment/app/BackStackRecord;)V
    .registers 3
    .param p1, "state"    # Landroidx/fragment/app/BackStackRecord;

    .line 2739
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2742
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2743
    return-void
.end method

.method public addFragment(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "moveToStateNow"    # Z

    .line 1912
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :cond_1c
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->makeActive(Landroidx/fragment/app/Fragment;)V

    .line 1914
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_6c

    .line 1915
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 1918
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1919
    :try_start_2e
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1920
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_50

    .line 1921
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1922
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1923
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_40

    .line 1924
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1926
    :cond_40
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_4a

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_4a

    .line 1927
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1929
    :cond_4a
    if-eqz p2, :cond_6c

    .line 1930
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;)V

    goto :goto_6c

    .line 1920
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1

    .line 1916
    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1933
    :cond_6c
    :goto_6c
    return-void
.end method

.method public addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 907
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 910
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    return-void
.end method

.method public allocBackStackIndex(Landroidx/fragment/app/BackStackRecord;)I
    .registers 6
    .param p1, "bse"    # Landroidx/fragment/app/BackStackRecord;

    .line 2144
    monitor-enter p0

    .line 2145
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_4b

    .line 2155
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2156
    .local v0, "index":I
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_44

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :cond_44
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2158
    monitor-exit p0

    return v0

    .line 2146
    .end local v0    # "index":I
    :cond_4b
    :goto_4b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_56

    .line 2147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2149
    :cond_56
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2150
    .restart local v0    # "index":I
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_82

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_82
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2152
    monitor-exit p0

    return v0

    .line 2160
    .end local v0    # "index":I
    :catchall_89
    move-exception v0

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_1 .. :try_end_8b} :catchall_89

    throw v0
.end method

.method public attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
    .registers 6
    .param p1, "host"    # Landroidx/fragment/app/FragmentHostCallback;
    .param p2, "container"    # Landroidx/fragment/app/FragmentContainer;
    .param p3, "parent"    # Landroidx/fragment/app/Fragment;

    .line 3201
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_b

    .line 3202
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3203
    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 3204
    iput-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 3205
    return-void

    .line 3201
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 2001
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_1c
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_7e

    .line 2003
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 2004
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v0, :cond_7e

    .line 2005
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 2008
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_4b

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_4b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2010
    :try_start_4e
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_62

    .line 2012
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 2013
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_7e

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_7e

    .line 2014
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_7e

    .line 2011
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v1

    .line 2006
    :cond_65
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2018
    :cond_7e
    :goto_7e
    return-void
.end method

.method public beginTransaction()Landroidx/fragment/app/FragmentTransaction;
    .registers 2

    .line 809
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V
    .registers 14
    .param p1, "record"    # Landroidx/fragment/app/BackStackRecord;
    .param p2, "isPop"    # Z
    .param p3, "runTransitions"    # Z
    .param p4, "moveToState"    # Z

    .line 2531
    if-eqz p2, :cond_6

    .line 2532
    invoke-virtual {p1, p4}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_9

    .line 2534
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    .line 2536
    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2537
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v2

    .line 2538
    .local v8, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2540
    if-eqz p3, :cond_2a

    .line 2541
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2543
    :cond_2a
    if-eqz p4, :cond_31

    .line 2544
    iget v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 2547
    :cond_31
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_73

    .line 2548
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2549
    .local v1, "numActive":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a
    if-ge v2, v1, :cond_73

    .line 2552
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 2553
    .local v3, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_70

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_70

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v4, :cond_70

    iget v4, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 2554
    invoke-virtual {p1, v4}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 2555
    iget v4, v3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_64

    .line 2556
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v6, v3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2558
    :cond_64
    if-eqz p4, :cond_69

    .line 2559
    iput v5, v3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_70

    .line 2561
    :cond_69
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 2562
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 2549
    .end local v3    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_70
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 2567
    .end local v1    # "numActive":I
    .end local v2    # "i":I
    :cond_73
    return-void
.end method

.method completeShowHideFragment(Landroidx/fragment/app/Fragment;)V
    .registers 9
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1714
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_81

    .line 1715
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1716
    xor-int/2addr v3, v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    .line 1715
    invoke-virtual {p0, p1, v0, v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    .line 1717
    .local v0, "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    if-eqz v0, :cond_52

    iget-object v3, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v3, :cond_52

    .line 1718
    iget-object v3, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1719
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_42

    .line 1720
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1721
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    goto :goto_47

    .line 1723
    :cond_30
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1724
    .local v3, "container":Landroid/view/ViewGroup;
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1725
    .local v4, "animatingView":Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1728
    iget-object v5, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/FragmentManagerImpl$4;

    invoke-direct {v6, p0, v3, v4, p1}, Landroidx/fragment/app/FragmentManagerImpl$4;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1738
    .end local v3    # "container":Landroid/view/ViewGroup;
    .end local v4    # "animatingView":Landroid/view/View;
    goto :goto_47

    .line 1740
    :cond_42
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1742
    :goto_47
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, v0}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1743
    iget-object v3, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_81

    .line 1745
    :cond_52
    if-eqz v0, :cond_65

    .line 1746
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, v0}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1747
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1748
    iget-object v3, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->start()V

    .line 1750
    :cond_65
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_72

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-nez v3, :cond_72

    const/16 v3, 0x8

    goto :goto_73

    :cond_72
    const/4 v3, 0x0

    .line 1753
    .local v3, "visibility":I
    :goto_73
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 1755
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 1759
    .end local v0    # "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .end local v3    # "visibility":I
    :cond_81
    :goto_81
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_8f

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_8f

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_8f

    .line 1760
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1762
    :cond_8f
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1763
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 1764
    return-void
.end method

.method public detachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1983
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_1c
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_5d

    .line 1985
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1986
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_5d

    .line 1988
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_43

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_43
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1990
    :try_start_46
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1991
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_5a

    .line 1992
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_56

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_56

    .line 1993
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1995
    :cond_56
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    goto :goto_5d

    .line 1991
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0

    .line 1998
    :cond_5d
    :goto_5d
    return-void
.end method

.method public dispatchActivityCreated()V
    .registers 2

    .line 3227
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3228
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3229
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3230
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 3296
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3297
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_16

    .line 3298
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3295
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3301
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3377
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    .line 3378
    return v1

    .line 3380
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 3381
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 3382
    .local v3, "f":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_21

    .line 3383
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3384
    return v2

    .line 3380
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3388
    .end local v0    # "i":I
    :cond_24
    return v1
.end method

.method public dispatchCreate()V
    .registers 2

    .line 3221
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3222
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3224
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 3313
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    .line 3314
    const/4 v0, 0x0

    return v0

    .line 3316
    :cond_7
    const/4 v0, 0x0

    .line 3317
    .local v0, "show":Z
    const/4 v1, 0x0

    .line 3318
    .local v1, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 3319
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 3320
    .local v3, "f":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_2e

    .line 3321
    invoke-virtual {v3, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3322
    const/4 v0, 0x1

    .line 3323
    if-nez v1, :cond_2b

    .line 3324
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 3326
    :cond_2b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3318
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3331
    .end local v2    # "i":I
    :cond_31
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v2, :cond_54

    .line 3332
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_36
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 3333
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 3334
    .restart local v3    # "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_4e

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 3335
    :cond_4e
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    .line 3332
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 3340
    .end local v2    # "i":I
    :cond_54
    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 3342
    return v0
.end method

.method public dispatchDestroy()V
    .registers 2

    .line 3258
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 3259
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 3260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3261
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3262
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 3263
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 3264
    return-void
.end method

.method public dispatchDestroyView()V
    .registers 2

    .line 3254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3255
    return-void
.end method

.method public dispatchLowMemory()V
    .registers 3

    .line 3304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 3305
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3306
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_16

    .line 3307
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    .line 3304
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3310
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .registers 4
    .param p1, "isInMultiWindowMode"    # Z

    .line 3277
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 3278
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3279
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_17

    .line 3280
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    .line 3277
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3283
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .line 3503
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3504
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3505
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3506
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3507
    invoke-virtual {v1, p1, p2, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3510
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3511
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3512
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3514
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3515
    :cond_31
    return-void
.end method

.method dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .registers 7
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyRecursive"    # Z

    .line 3455
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3456
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3457
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3458
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3459
    invoke-virtual {v1, p1, p2, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 3462
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3463
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3464
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 3466
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3467
    :cond_31
    return-void
.end method

.method dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .line 3487
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3488
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3489
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3490
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3491
    invoke-virtual {v1, p1, p2, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3494
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3495
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3496
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3498
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3499
    :cond_31
    return-void
.end method

.method dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3625
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3626
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3627
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3628
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3629
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 3632
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3633
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3634
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3636
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3637
    :cond_31
    return-void
.end method

.method dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3640
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3641
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3642
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3643
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3644
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    .line 3647
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3648
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3649
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3651
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3652
    :cond_31
    return-void
.end method

.method dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3564
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3565
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3566
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3567
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3568
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    .line 3571
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3572
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3573
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3575
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3576
    :cond_31
    return-void
.end method

.method dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .registers 7
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onlyRecursive"    # Z

    .line 3439
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3440
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3441
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3442
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3443
    invoke-virtual {v1, p1, p2, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 3446
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3447
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3448
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 3450
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3451
    :cond_31
    return-void
.end method

.method dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .line 3471
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3472
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3473
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3474
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3475
    invoke-virtual {v1, p1, p2, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3478
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3479
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3480
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3482
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3483
    :cond_31
    return-void
.end method

.method dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3549
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3550
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3551
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3552
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3553
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    .line 3556
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3557
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3558
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3560
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3561
    :cond_31
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    .line 3595
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3596
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3597
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3598
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3599
    invoke-virtual {v1, p1, p2, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3602
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3603
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3604
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 3606
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3607
    :cond_31
    return-void
.end method

.method dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3534
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3535
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3536
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3537
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3538
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    .line 3541
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3542
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3543
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3545
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3546
    :cond_31
    return-void
.end method

.method dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3579
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3580
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3581
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3582
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3583
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    .line 3586
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3587
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3588
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3590
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3591
    :cond_31
    return-void
.end method

.method dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .registers 8
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "onlyRecursive"    # Z

    .line 3519
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3520
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3521
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3522
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3523
    invoke-virtual {v1, p1, p2, p3, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3526
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3527
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p4, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3528
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 3530
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3531
    :cond_31
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    .line 3610
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 3611
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3612
    .local v0, "parentManager":Landroidx/fragment/app/FragmentManager;
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_13

    .line 3613
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x1

    .line 3614
    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 3617
    .end local v0    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    .line 3618
    .local v1, "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2b

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_30

    .line 3619
    :cond_2b
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 3621
    .end local v1    # "holder":Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    :cond_30
    goto :goto_19

    .line 3622
    :cond_31
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 3362
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    .line 3363
    return v1

    .line 3365
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 3366
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 3367
    .local v3, "f":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_21

    .line 3368
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3369
    return v2

    .line 3365
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3373
    .end local v0    # "i":I
    :cond_24
    return v1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3392
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 3393
    return-void

    .line 3395
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 3396
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3397
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_1c

    .line 3398
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3395
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3401
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method public dispatchPause()V
    .registers 2

    .line 3245
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3246
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .registers 4
    .param p1, "isInPictureInPictureMode"    # Z

    .line 3286
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 3287
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3288
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_17

    .line 3289
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    .line 3286
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3292
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .line 3346
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    .line 3347
    const/4 v0, 0x0

    return v0

    .line 3349
    :cond_7
    const/4 v0, 0x0

    .line 3350
    .local v0, "show":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 3351
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 3352
    .local v2, "f":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_22

    .line 3353
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3354
    const/4 v0, 0x1

    .line 3350
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3358
    .end local v1    # "i":I
    :cond_25
    return v0
.end method

.method public dispatchResume()V
    .registers 2

    .line 3239
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3240
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3241
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3242
    return-void
.end method

.method public dispatchStart()V
    .registers 2

    .line 3233
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3234
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3235
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3236
    return-void
.end method

.method public dispatchStop()V
    .registers 2

    .line 3249
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3250
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    .line 3251
    return-void
.end method

.method doPendingDeferredStart()V
    .registers 2

    .line 2724
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_a

    .line 2725
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 2726
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 2728
    :cond_a
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_5b

    .line 1024
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1025
    .local v1, "N":I
    if-lez v1, :cond_5b

    .line 1026
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Active Fragments in "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    if-ge v2, v1, :cond_5b

    .line 1030
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 1031
    .local v3, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1032
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1033
    if-eqz v3, :cond_58

    .line 1034
    invoke-virtual {v3, v0, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1029
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1040
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_5b
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1041
    .restart local v1    # "N":I
    if-lez v1, :cond_90

    .line 1042
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6c
    if-ge v2, v1, :cond_90

    .line 1044
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 1045
    .restart local v3    # "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1048
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 1053
    .end local v2    # "i":I
    :cond_90
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v2, :cond_c7

    .line 1054
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1055
    if-lez v1, :cond_c7

    .line 1056
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Fragments Created Menus:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a3
    if-ge v2, v1, :cond_c7

    .line 1058
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 1059
    .restart local v3    # "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1060
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 1065
    .end local v2    # "i":I
    :cond_c7
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v2, :cond_101

    .line 1066
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1067
    if-lez v1, :cond_101

    .line 1068
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Back Stack:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_da
    if-ge v2, v1, :cond_101

    .line 1070
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 1071
    .local v3, "bs":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1072
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v3, v0, p2, p3, p4}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1069
    .end local v3    # "bs":Landroidx/fragment/app/BackStackRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_da

    .line 1078
    .end local v2    # "i":I
    :cond_101
    monitor-enter p0

    .line 1079
    :try_start_102
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_136

    .line 1080
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v2

    .line 1081
    if-lez v1, :cond_136

    .line 1082
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Back Stack Indices:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_116
    if-ge v2, v1, :cond_136

    .line 1084
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 1085
    .restart local v3    # "bs":Landroidx/fragment/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1086
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1083
    .end local v3    # "bs":Landroidx/fragment/app/BackStackRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_116

    .line 1091
    .end local v2    # "i":I
    :cond_136
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_155

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_155

    .line 1092
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAvailBackStackIndices: "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    :cond_155
    monitor-exit p0
    :try_end_156
    .catchall {:try_start_102 .. :try_end_156} :catchall_20a

    .line 1097
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_189

    .line 1098
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1099
    if-lez v1, :cond_189

    .line 1100
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Actions:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_169
    if-ge v2, v1, :cond_189

    .line 1102
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;

    .line 1103
    .local v3, "r":Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1104
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1101
    .end local v3    # "r":Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_169

    .line 1109
    .end local v2    # "i":I
    :cond_189
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "FragmentManager misc state:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mHost="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1111
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mContainer="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1112
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1bc

    .line 1113
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mParent="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1115
    :cond_1bc
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mCurState="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1116
    const-string v2, " mStateSaved="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1117
    const-string v2, " mStopped="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1118
    const-string v2, " mDestroyed="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1119
    iget-boolean v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v2, :cond_1f8

    .line 1120
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    iget-boolean v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1123
    :cond_1f8
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v2, :cond_209

    .line 1124
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mNoTransactionsBecause="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    :cond_209
    return-void

    .line 1095
    :catchall_20a
    move-exception v2

    :try_start_20b
    monitor-exit p0
    :try_end_20c
    .catchall {:try_start_20b .. :try_end_20c} :catchall_20a

    goto :goto_20e

    :goto_20d
    throw v2

    :goto_20e
    goto :goto_20d
.end method

.method public enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V
    .registers 5
    .param p1, "action"    # Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 2105
    if-nez p2, :cond_5

    .line 2106
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 2108
    :cond_5
    monitor-enter p0

    .line 2109
    :try_start_6
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_f

    goto :goto_24

    .line 2116
    :cond_f
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 2117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 2119
    :cond_1a
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->scheduleCommit()V

    .line 2121
    monitor-exit p0

    .line 2122
    return-void

    .line 2110
    :cond_24
    :goto_24
    if-eqz p2, :cond_28

    .line 2112
    monitor-exit p0

    return-void

    .line 2114
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "action":Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;
    .end local p2    # "allowStateLoss":Z
    throw v0

    .line 2121
    .restart local p1    # "action":Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;
    .restart local p2    # "allowStateLoss":Z
    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw v0
.end method

.method ensureInflatedFragmentView(Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1688
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_3e

    .line 1689
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1691
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3c

    .line 1692
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1693
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1694
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2d

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1695
    :cond_2d
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1696
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_3e

    .line 1698
    :cond_3c
    iput-object v2, p1, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1701
    :cond_3e
    :goto_3e
    return-void
.end method

.method public execPendingActions()Z
    .registers 5

    .line 2267
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2269
    const/4 v1, 0x0

    .line 2270
    .local v1, "didSomething":Z
    :goto_5
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2271
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2273
    :try_start_11
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1e

    .line 2275
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 2276
    nop

    .line 2277
    const/4 v1, 0x1

    goto :goto_5

    .line 2275
    :catchall_1e
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    .line 2280
    :cond_23
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2281
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    .line 2283
    return v1
.end method

.method public execSingleAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V
    .registers 5
    .param p1, "action"    # Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;
    .param p2, "allowStateLoss"    # Z

    .line 2235
    if-eqz p2, :cond_b

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_b

    .line 2237
    :cond_a
    return-void

    .line 2239
    :cond_b
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 2240
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2241
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2243
    :try_start_1b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    .line 2245
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    .line 2246
    goto :goto_2b

    .line 2245
    :catchall_26
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    .line 2249
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 2250
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    .line 2251
    return-void
.end method

.method public executePendingTransactions()Z
    .registers 2

    .line 814
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    .line 815
    .local v0, "updates":Z
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 816
    return v0
.end method

.method public findFragmentById(I)Landroidx/fragment/app/Fragment;
    .registers 5
    .param p1, "id"    # I

    .line 2024
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 2025
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2026
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_19

    iget v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_19

    .line 2027
    return-object v1

    .line 2024
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2030
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3a

    .line 2032
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_26
    if-ltz v0, :cond_3a

    .line 2033
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2034
    .restart local v1    # "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_37

    iget v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_37

    .line 2035
    return-object v1

    .line 2032
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 2039
    .end local v0    # "i":I
    :cond_3a
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 2045
    if-eqz p1, :cond_22

    .line 2047
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_22

    .line 2048
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2049
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_1f

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2050
    return-object v1

    .line 2047
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2054
    .end local v0    # "i":I
    :cond_22
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_46

    if-eqz p1, :cond_46

    .line 2056
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_2e
    if-ltz v0, :cond_46

    .line 2057
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2058
    .restart local v1    # "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_43

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2059
    return-object v1

    .line 2056
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 2063
    .end local v0    # "i":I
    :cond_46
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 5
    .param p1, "who"    # Ljava/lang/String;

    .line 2067
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    .line 2068
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_23

    .line 2069
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2070
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_20

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_20

    .line 2071
    return-object v1

    .line 2068
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 2075
    .end local v0    # "i":I
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public freeBackStackIndex(I)V
    .registers 5
    .param p1, "index"    # I

    .line 2189
    monitor-enter p0

    .line 2190
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2191
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 2192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2194
    :cond_12
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_2e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    monitor-exit p0

    .line 2197
    return-void

    .line 2196
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method getActiveFragmentCount()I
    .registers 2

    .line 978
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 979
    const/4 v0, 0x0

    return v0

    .line 981
    :cond_6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method getActiveFragments()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 962
    const/4 v0, 0x0

    return-object v0

    .line 964
    :cond_6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 965
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 966
    .local v1, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_1e

    .line 967
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 969
    .end local v2    # "i":I
    :cond_1e
    return-object v1
.end method

.method public getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;
    .registers 3
    .param p1, "index"    # I

    .line 902
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .registers 2

    .line 897
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 932
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 933
    .local v1, "index":I
    if-ne v1, v0, :cond_9

    .line 934
    const/4 v0, 0x0

    return-object v0

    .line 936
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 937
    .local v0, "f":Landroidx/fragment/app/Fragment;
    if-nez v0, :cond_38

    .line 938
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 941
    :cond_38
    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 946
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 947
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 949
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 950
    :try_start_10
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 951
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .registers 1

    .line 3796
    return-object p0
.end method

.method public getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 3416
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public hideFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1957
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_1c
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_28

    .line 1959
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1962
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1964
    :cond_28
    return-void
.end method

.method public isDestroyed()Z
    .registers 2

    .line 1000
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method isStateAtLeast(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 1314
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isStateSaved()Z
    .registers 2

    .line 2094
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .registers 13
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .line 1160
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v0

    .line 1161
    .local v0, "nextAnim":I
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1162
    .local v1, "animation":Landroid/view/animation/Animation;
    if-eqz v1, :cond_10

    .line 1163
    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v2, v1}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v2

    .line 1166
    :cond_10
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v2

    .line 1167
    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_1c

    .line 1168
    new-instance v3, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v3, v2}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-object v3

    .line 1171
    :cond_1c
    if-eqz v0, :cond_7a

    .line 1172
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1173
    .local v3, "dir":Ljava/lang/String;
    const-string v4, "anim"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1174
    .local v4, "isAnim":Z
    const/4 v5, 0x0

    .line 1175
    .local v5, "successfulLoad":Z
    if-eqz v4, :cond_4e

    .line 1178
    :try_start_35
    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    move-object v1, v6

    .line 1179
    if-eqz v1, :cond_48

    .line 1180
    new-instance v6, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v6, v1}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_47} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_47} :catch_4a

    return-object v6

    .line 1183
    :cond_48
    const/4 v5, 0x1

    .line 1188
    goto :goto_4e

    .line 1186
    :catch_4a
    move-exception v6

    goto :goto_4e

    .line 1184
    :catch_4c
    move-exception v6

    .line 1185
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    throw v6

    .line 1190
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4e
    :goto_4e
    if-nez v5, :cond_7a

    .line 1193
    :try_start_50
    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v6

    move-object v2, v6

    .line 1194
    if-eqz v2, :cond_63

    .line 1195
    new-instance v6, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v6, v2}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_62} :catch_64

    return-object v6

    .line 1207
    :cond_63
    goto :goto_7a

    .line 1197
    :catch_64
    move-exception v6

    .line 1198
    .local v6, "e":Ljava/lang/RuntimeException;
    if-nez v4, :cond_79

    .line 1203
    iget-object v7, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1204
    if-eqz v1, :cond_7a

    .line 1205
    new-instance v7, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v7, v1}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v7

    .line 1200
    :cond_79
    throw v6

    .line 1211
    .end local v3    # "dir":Ljava/lang/String;
    .end local v4    # "isAnim":Z
    .end local v5    # "successfulLoad":Z
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_7a
    :goto_7a
    const/4 v3, 0x0

    if-nez p2, :cond_7e

    .line 1212
    return-object v3

    .line 1215
    :cond_7e
    invoke-static {p2, p3}, Landroidx/fragment/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v4

    .line 1216
    .local v4, "styleIndex":I
    if-gez v4, :cond_85

    .line 1217
    return-object v3

    .line 1220
    :cond_85
    const v5, 0x3f79999a    # 0.975f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    packed-switch v4, :pswitch_data_e8

    .line 1236
    if-nez p4, :cond_e6

    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 1237
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    goto :goto_e6

    .line 1232
    :pswitch_9f
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v6}, Landroidx/fragment/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v3

    return-object v3

    .line 1230
    :pswitch_aa
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v3

    return-object v3

    .line 1228
    :pswitch_b5
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x3f89999a    # 1.075f

    invoke-static {v3, v7, v5, v7, v6}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v3

    return-object v3

    .line 1226
    :pswitch_c3
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v7, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v3

    return-object v3

    .line 1224
    :pswitch_ce
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v5, v7, v6}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v3

    return-object v3

    .line 1222
    :pswitch_d9
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x3f900000    # 1.125f

    invoke-static {v3, v5, v7, v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v3

    return-object v3

    .line 1239
    :cond_e6
    :goto_e6
    nop

    .line 1240
    return-object v3

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_d9
        :pswitch_ce
        :pswitch_c3
        :pswitch_b5
        :pswitch_aa
        :pswitch_9f
    .end packed-switch
.end method

.method makeActive(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1886
    iget v0, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    if-ltz v0, :cond_5

    .line 1887
    return-void

    .line 1890
    :cond_5
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->setIndex(ILandroidx/fragment/app/Fragment;)V

    .line 1891
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_1b

    .line 1892
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 1894
    :cond_1b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1895
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allocated fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_3e
    return-void
.end method

.method makeInactive(Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1899
    iget v0, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v0, :cond_5

    .line 1900
    return-void

    .line 1903
    :cond_5
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeing fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_21
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1908
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->initState()V

    .line 1909
    return-void
.end method

.method moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V
    .registers 12
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1773
    if-nez p1, :cond_3

    .line 1774
    return-void

    .line 1776
    :cond_3
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 1777
    .local v0, "nextState":I
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    .line 1778
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1779
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1a

    .line 1781
    :cond_16
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1784
    :cond_1a
    :goto_1a
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v0

    invoke-virtual/range {v4 .. v9}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1786
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_90

    .line 1788
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentUnder(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 1789
    .local v1, "underFragment":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_4b

    .line 1790
    iget-object v4, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1792
    .local v4, "underView":Landroid/view/View;
    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1793
    .local v5, "container":Landroid/view/ViewGroup;
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 1794
    .local v6, "underIndex":I
    iget-object v7, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 1795
    .local v7, "viewIndex":I
    if-ge v7, v6, :cond_4b

    .line 1796
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1797
    iget-object v8, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1800
    .end local v4    # "underView":Landroid/view/View;
    .end local v5    # "container":Landroid/view/ViewGroup;
    .end local v6    # "underIndex":I
    .end local v7    # "viewIndex":I
    :cond_4b
    iget-boolean v4, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v4, :cond_90

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_90

    .line 1802
    iget v4, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_61

    .line 1803
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v6, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1805
    :cond_61
    iput v5, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1806
    iput-boolean v3, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 1808
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v3

    .line 1809
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    .line 1808
    invoke-virtual {p0, p1, v3, v2, v4}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v2

    .line 1810
    .local v2, "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    if-eqz v2, :cond_90

    .line 1811
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3, v2}, Landroidx/fragment/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;)V

    .line 1812
    iget-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_84

    .line 1813
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_90

    .line 1815
    :cond_84
    iget-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1816
    iget-object v3, v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 1821
    .end local v1    # "underFragment":Landroidx/fragment/app/Fragment;
    .end local v2    # "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_90
    :goto_90
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_97

    .line 1822
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->completeShowHideFragment(Landroidx/fragment/app/Fragment;)V

    .line 1824
    :cond_97
    return-void
.end method

.method moveToState(IZ)V
    .registers 8
    .param p1, "newState"    # I
    .param p2, "always"    # Z

    .line 1836
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    .line 1837
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1840
    :cond_f
    :goto_f
    if-nez p2, :cond_16

    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-ne p1, v0, :cond_16

    .line 1841
    return-void

    .line 1844
    :cond_16
    iput p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 1846
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_6e

    .line 1849
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1850
    .local v0, "numAdded":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, v0, :cond_33

    .line 1851
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 1852
    .local v2, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 1850
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1857
    .end local v1    # "i":I
    :cond_33
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1858
    .local v1, "numActive":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a
    if-ge v2, v1, :cond_58

    .line 1859
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 1860
    .local v3, "f":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_55

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-nez v4, :cond_4e

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v4, :cond_55

    :cond_4e
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v4, :cond_55

    .line 1861
    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 1858
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 1865
    .end local v2    # "i":I
    :cond_58
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1867
    iget-boolean v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v2, :cond_6e

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v2, :cond_6e

    iget v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6e

    .line 1868
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1869
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1872
    .end local v0    # "numAdded":I
    .end local v1    # "numActive":I
    :cond_6e
    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;)V
    .registers 8
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1684
    iget v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1685
    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;IIIZ)V
    .registers 22
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "newState"    # I
    .param p3, "transit"    # I
    .param p4, "transitionStyle"    # I
    .param p5, "keepActive"    # Z

    .line 1321
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-boolean v0, v8, Landroidx/fragment/app/Fragment;->mAdded:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_11

    iget-boolean v0, v8, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_e

    goto :goto_11

    :cond_e
    move/from16 v0, p2

    goto :goto_16

    :cond_11
    :goto_11
    move/from16 v0, p2

    if-le v0, v9, :cond_16

    .line 1322
    const/4 v0, 0x1

    .line 1324
    .end local p2    # "newState":I
    .local v0, "newState":I
    :cond_16
    :goto_16
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_2c

    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    if-le v0, v1, :cond_2c

    .line 1325
    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    if-nez v1, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1327
    const/4 v0, 0x1

    goto :goto_2c

    .line 1330
    :cond_2a
    iget v0, v8, Landroidx/fragment/app/Fragment;->mState:I

    .line 1335
    :cond_2c
    :goto_2c
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v1, :cond_39

    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v1, v10, :cond_39

    if-le v0, v11, :cond_39

    .line 1336
    const/4 v0, 0x2

    .line 1338
    :cond_39
    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    const-string v12, "FragmentManager"

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-gt v1, v0, :cond_30b

    .line 1342
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_4a

    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-nez v1, :cond_4a

    .line 1343
    return-void

    .line 1345
    :cond_4a
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_56

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 1350
    :cond_56
    invoke-virtual {v8, v13}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1351
    invoke-virtual {v8, v13}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1352
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1354
    :cond_6a
    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_4b4

    goto/16 :goto_305

    .line 1356
    :pswitch_71
    if-lez v0, :cond_1b6

    .line 1357
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_8d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_8d
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_e4

    .line 1359
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v2, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1360
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1359
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1361
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:view_state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1363
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    invoke-virtual {v7, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 1365
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_c2

    .line 1366
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 1369
    :cond_c2
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    if-eqz v1, :cond_d1

    .line 1370
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v8, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 1371
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_db

    .line 1373
    :cond_d1
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v8, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 1376
    :goto_db
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_e4

    .line 1377
    iput-boolean v9, v8, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1378
    if-le v0, v11, :cond_e4

    .line 1379
    const/4 v0, 0x2

    .line 1384
    :cond_e4
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v1, v8, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1385
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    iput-object v1, v8, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1386
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_f3

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    goto :goto_f9

    :cond_f3
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1387
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getFragmentManagerImpl()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    :goto_f9
    iput-object v1, v8, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 1391
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const-string v15, "Fragment "

    if-eqz v1, :cond_14a

    .line 1392
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-ne v1, v2, :cond_121

    .line 1397
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v1, v9, :cond_14a

    .line 1398
    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_14a

    .line 1393
    :cond_121
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declared target fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " that does not belong to this FragmentManager!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1402
    :cond_14a
    :goto_14a
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 1403
    iput-boolean v14, v8, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 1404
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1405
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_199

    .line 1409
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_16c

    .line 1410
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1, v8}, Landroidx/fragment/app/FragmentHostCallback;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_171

    .line 1412
    :cond_16c
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v8}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 1414
    :goto_171
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 1416
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-nez v1, :cond_18e

    .line 1417
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1418
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 1419
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_195

    .line 1421
    :cond_18e
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1422
    iput v9, v8, Landroidx/fragment/app/Fragment;->mState:I

    .line 1424
    :goto_195
    iput-boolean v14, v8, Landroidx/fragment/app/Fragment;->mRetaining:Z

    move v1, v0

    goto :goto_1b7

    .line 1406
    :cond_199
    new-instance v1, Landroidx/fragment/app/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onAttach()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1431
    :cond_1b6
    :pswitch_1b6
    move v1, v0

    .end local v0    # "newState":I
    .local v1, "newState":I
    :goto_1b7
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/FragmentManagerImpl;->ensureInflatedFragmentView(Landroidx/fragment/app/Fragment;)V

    .line 1433
    if-le v1, v9, :cond_2bc

    .line 1434
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_1d6
    iget-boolean v0, v8, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_2a7

    .line 1436
    const/4 v0, 0x0

    .line 1437
    .local v0, "container":Landroid/view/ViewGroup;
    iget v2, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-eqz v2, :cond_25a

    .line 1438
    iget v2, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_205

    .line 1439
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for a container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v2}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1444
    :cond_205
    iget-object v2, v7, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iget v3, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1445
    .end local v0    # "container":Landroid/view/ViewGroup;
    .local v2, "container":Landroid/view/ViewGroup;
    if-nez v2, :cond_259

    iget-boolean v0, v8, Landroidx/fragment/app/Fragment;->mRestored:Z

    if-nez v0, :cond_259

    .line 1448
    :try_start_215
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_21f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_215 .. :try_end_21f} :catch_220

    .line 1451
    .local v0, "resName":Ljava/lang/String;
    goto :goto_224

    .line 1449
    .end local v0    # "resName":Ljava/lang/String;
    :catch_220
    move-exception v0

    .line 1450
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "unknown"

    move-object v0, v3

    .line 1452
    .local v0, "resName":Ljava/lang/String;
    :goto_224
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No view found for id 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 1454
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1452
    invoke-direct {v7, v3}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 1459
    .end local v0    # "resName":Ljava/lang/String;
    :cond_259
    move-object v0, v2

    .end local v2    # "container":Landroid/view/ViewGroup;
    .local v0, "container":Landroid/view/ViewGroup;
    :cond_25a
    iput-object v0, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1460
    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v2}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v2, v0, v3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1462
    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_2a5

    .line 1463
    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iput-object v2, v8, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1464
    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1465
    if-eqz v0, :cond_27b

    .line 1466
    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1468
    :cond_27b
    iget-boolean v2, v8, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_286

    .line 1469
    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1471
    :cond_286
    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v2, v3}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1472
    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v2, v3, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1476
    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2a1

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2a1

    goto :goto_2a2

    :cond_2a1
    const/4 v9, 0x0

    :goto_2a2
    iput-boolean v9, v8, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_2a7

    .line 1479
    :cond_2a5
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1483
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_2a7
    :goto_2a7
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 1484
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1485
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2ba

    .line 1486
    iget-object v0, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroidx/fragment/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 1488
    :cond_2ba
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1492
    :cond_2bc
    move v0, v1

    .end local v1    # "newState":I
    .local v0, "newState":I
    :pswitch_2bd
    if-le v0, v11, :cond_2df

    .line 1493
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2d9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_2d9
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 1495
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    .line 1499
    :cond_2df
    :pswitch_2df
    if-le v0, v10, :cond_305

    .line 1500
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2fb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_2fb
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performResume()V

    .line 1502
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    .line 1503
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1504
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_305
    :goto_305
    move/from16 v2, p3

    move/from16 v4, p4

    goto/16 :goto_47a

    .line 1507
    :cond_30b
    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    if-le v1, v0, :cond_476

    .line 1508
    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_4c0

    move/from16 v2, p3

    move/from16 v4, p4

    goto/16 :goto_47a

    .line 1510
    :pswitch_31a
    const/4 v1, 0x4

    if-ge v0, v1, :cond_33d

    .line 1511
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_337

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_337
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 1513
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    .line 1517
    :cond_33d
    :pswitch_33d
    if-ge v0, v10, :cond_35f

    .line 1518
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_359

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_359
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 1520
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    .line 1524
    :cond_35f
    :pswitch_35f
    if-ge v0, v11, :cond_3f5

    .line 1525
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_37b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_37b
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_38e

    .line 1529
    iget-object v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1, v8}, Landroidx/fragment/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_38e

    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_38e

    .line 1530
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentViewState(Landroidx/fragment/app/Fragment;)V

    .line 1533
    :cond_38e
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 1534
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 1535
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_3e1

    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3e1

    .line 1537
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1538
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1539
    const/4 v1, 0x0

    .line 1540
    .local v1, "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    iget v2, v7, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x0

    if-lez v2, :cond_3ce

    iget-boolean v2, v7, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v2, :cond_3ce

    iget-object v2, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1541
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3c9

    iget v2, v8, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3c9

    .line 1543
    move/from16 v2, p3

    move/from16 v4, p4

    invoke-virtual {v7, v8, v2, v14, v4}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v1

    goto :goto_3d2

    .line 1541
    :cond_3c9
    move/from16 v2, p3

    move/from16 v4, p4

    goto :goto_3d2

    .line 1540
    :cond_3ce
    move/from16 v2, p3

    move/from16 v4, p4

    .line 1546
    :goto_3d2
    iput v3, v8, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1547
    if-eqz v1, :cond_3d9

    .line 1548
    invoke-direct {v7, v8, v1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V

    .line 1550
    :cond_3d9
    iget-object v3, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3e5

    .line 1535
    .end local v1    # "anim":Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    :cond_3e1
    move/from16 v2, p3

    move/from16 v4, p4

    .line 1552
    :goto_3e5
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1553
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1556
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 1557
    iget-object v1, v8, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v13}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 1558
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 1559
    iput-boolean v14, v8, Landroidx/fragment/app/Fragment;->mInLayout:Z

    goto :goto_3fe

    .line 1524
    :cond_3f5
    move/from16 v2, p3

    move/from16 v4, p4

    goto :goto_3fe

    .line 1508
    :pswitch_3fa
    move/from16 v2, p3

    move/from16 v4, p4

    .line 1563
    :goto_3fe
    if-ge v0, v9, :cond_47a

    .line 1564
    iget-boolean v1, v7, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v1, :cond_426

    .line 1571
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_415

    .line 1572
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    .line 1573
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v8, v13}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1574
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .end local v1    # "v":Landroid/view/View;
    goto :goto_426

    .line 1575
    :cond_415
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_426

    .line 1576
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    .line 1577
    .local v1, "animator":Landroid/animation/Animator;
    invoke-virtual {v8, v13}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1578
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    nop

    .line 1581
    .end local v1    # "animator":Landroid/animation/Animator;
    :cond_426
    :goto_426
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_471

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_433

    goto :goto_471

    .line 1589
    :cond_433
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_44d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom CREATED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :cond_44d
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_458

    .line 1591
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performDestroy()V

    .line 1592
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_45a

    .line 1594
    :cond_458
    iput v14, v8, Landroidx/fragment/app/Fragment;->mState:I

    .line 1597
    :goto_45a
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performDetach()V

    .line 1598
    invoke-virtual {v7, v8, v14}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    .line 1599
    if-nez p5, :cond_47a

    .line 1600
    iget-boolean v1, v8, Landroidx/fragment/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_46a

    .line 1601
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/FragmentManagerImpl;->makeInactive(Landroidx/fragment/app/Fragment;)V

    goto :goto_47a

    .line 1603
    :cond_46a
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1604
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1605
    iput-object v13, v8, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    goto :goto_47a

    .line 1586
    :cond_471
    :goto_471
    invoke-virtual {v8, v0}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1587
    const/4 v0, 0x1

    goto :goto_47a

    .line 1507
    :cond_476
    move/from16 v2, p3

    move/from16 v4, p4

    .line 1613
    :cond_47a
    :goto_47a
    iget v1, v8, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v1, v0, :cond_4b2

    .line 1614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveToState: Fragment state for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not updated inline; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "expected state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v8, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iput v0, v8, Landroidx/fragment/app/Fragment;->mState:I

    .line 1618
    :cond_4b2
    return-void

    nop

    :pswitch_data_4b4
    .packed-switch 0x0
        :pswitch_71
        :pswitch_1b6
        :pswitch_2bd
        :pswitch_2df
    .end packed-switch

    :pswitch_data_4c0
    .packed-switch 0x1
        :pswitch_3fa
        :pswitch_35f
        :pswitch_33d
        :pswitch_31a
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .registers 4

    .line 3208
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 3209
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 3210
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 3211
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3212
    .local v0, "addedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_21

    .line 3213
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 3214
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_1e

    .line 3215
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    .line 3212
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 3218
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 21
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 3696
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const-string v0, "fragment"

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 3697
    return-object v1

    .line 3700
    :cond_12
    const-string v0, "class"

    invoke-interface {v8, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3701
    .local v0, "fname":Ljava/lang/String;
    sget-object v2, Landroidx/fragment/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 3702
    .local v10, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    if-nez v0, :cond_27

    .line 3703
    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_28

    .line 3702
    :cond_27
    move-object v11, v0

    .line 3705
    .end local v0    # "fname":Ljava/lang/String;
    .local v11, "fname":Ljava/lang/String;
    :goto_28
    const/4 v0, 0x1

    const/4 v3, -0x1

    invoke-virtual {v10, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 3706
    .local v12, "id":I
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3707
    .local v13, "tag":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 3709
    iget-object v4, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v11}, Landroidx/fragment/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 3712
    return-object v1

    .line 3715
    :cond_43
    if-eqz p1, :cond_49

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    :cond_49
    move v14, v2

    .line 3716
    .local v14, "containerId":I
    if-ne v14, v3, :cond_72

    if-ne v12, v3, :cond_72

    if-eqz v13, :cond_51

    goto :goto_72

    .line 3717
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3724
    :cond_72
    :goto_72
    if-eq v12, v3, :cond_79

    invoke-virtual {v6, v12}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    goto :goto_7a

    :cond_79
    move-object v2, v1

    .line 3725
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    :goto_7a
    if-nez v2, :cond_82

    if-eqz v13, :cond_82

    .line 3726
    invoke-virtual {v6, v13}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 3728
    :cond_82
    if-nez v2, :cond_8a

    if-eq v14, v3, :cond_8a

    .line 3729
    invoke-virtual {v6, v14}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 3732
    :cond_8a
    sget-boolean v3, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_be

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView: id=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3733
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " existing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3732
    const-string v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    :cond_be
    if-nez v2, :cond_eb

    .line 3736
    iget-object v3, v6, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v3, v7, v11, v1}, Landroidx/fragment/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 3737
    iput-boolean v0, v2, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 3738
    if-eqz v12, :cond_cc

    move v1, v12

    goto :goto_cd

    :cond_cc
    move v1, v14

    :goto_cd
    iput v1, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 3739
    iput v14, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 3740
    iput-object v13, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 3741
    iput-boolean v0, v2, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3742
    iput-object v6, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 3743
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v1, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3744
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v8, v3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3745
    invoke-virtual {v6, v2, v0}, Landroidx/fragment/app/FragmentManagerImpl;->addFragment(Landroidx/fragment/app/Fragment;Z)V

    move-object v15, v2

    goto :goto_105

    .line 3747
    :cond_eb
    iget-boolean v1, v2, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-nez v1, :cond_155

    .line 3757
    iput-boolean v0, v2, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3758
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v1, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3762
    iget-boolean v1, v2, Landroidx/fragment/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_104

    .line 3763
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v8, v3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3771
    :cond_104
    move-object v15, v2

    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    .local v15, "fragment":Landroidx/fragment/app/Fragment;
    :goto_105
    iget v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-ge v1, v0, :cond_118

    iget-boolean v0, v15, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_118

    .line 3772
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_11b

    .line 3774
    :cond_118
    invoke-virtual {v6, v15}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;)V

    .line 3777
    :goto_11b
    iget-object v0, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_136

    .line 3781
    if-eqz v12, :cond_126

    .line 3782
    iget-object v0, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setId(I)V

    .line 3784
    :cond_126
    iget-object v0, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_133

    .line 3785
    iget-object v0, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3787
    :cond_133
    iget-object v0, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    return-object v0

    .line 3778
    :cond_136
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3750
    .end local v15    # "fragment":Landroidx/fragment/app/Fragment;
    .restart local v2    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3751
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", or parent id 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3752
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with another fragment for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 3792
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V
    .registers 9
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 1257
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_19

    .line 1258
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_c

    .line 1260
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1261
    return-void

    .line 1263
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1264
    iget v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1266
    :cond_19
    return-void
.end method

.method public popBackStack()V
    .registers 5

    .line 821
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 822
    return-void
.end method

.method public popBackStack(II)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 843
    if-ltz p1, :cond_d

    .line 846
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 847
    return-void

    .line 844
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 832
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 833
    return-void
.end method

.method public popBackStackImmediate()Z
    .registers 4

    .line 826
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 827
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 851
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 852
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 853
    if-ltz p1, :cond_e

    .line 856
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 854
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 837
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 838
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .registers 11
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2748
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2749
    return v1

    .line 2751
    :cond_6
    const/4 v2, 0x1

    if-nez p3, :cond_29

    if-gez p4, :cond_29

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_29

    .line 2752
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .line 2753
    .local v0, "last":I
    if-gez v0, :cond_17

    .line 2754
    return v1

    .line 2756
    :cond_17
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2757
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    .end local v0    # "last":I
    goto/16 :goto_a4

    .line 2759
    :cond_29
    const/4 v3, -0x1

    .line 2760
    .local v3, "index":I
    if-nez p3, :cond_2e

    if-ltz p4, :cond_7e

    .line 2763
    :cond_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v3, v0

    .line 2764
    :goto_34
    if-ltz v3, :cond_56

    .line 2765
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 2766
    .local v0, "bss":Landroidx/fragment/app/BackStackRecord;
    if-eqz p3, :cond_4b

    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2767
    goto :goto_56

    .line 2769
    :cond_4b
    if-ltz p4, :cond_52

    iget v4, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_52

    .line 2770
    goto :goto_56

    .line 2772
    :cond_52
    nop

    .end local v0    # "bss":Landroidx/fragment/app/BackStackRecord;
    add-int/lit8 v3, v3, -0x1

    .line 2773
    goto :goto_34

    .line 2774
    :cond_56
    :goto_56
    if-gez v3, :cond_59

    .line 2775
    return v1

    .line 2777
    :cond_59
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_7e

    .line 2778
    add-int/lit8 v3, v3, -0x1

    .line 2780
    :goto_5f
    if-ltz v3, :cond_7e

    .line 2781
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 2782
    .restart local v0    # "bss":Landroidx/fragment/app/BackStackRecord;
    if-eqz p3, :cond_75

    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    :cond_75
    if-ltz p4, :cond_7e

    iget v4, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_7e

    .line 2784
    :cond_7b
    add-int/lit8 v3, v3, -0x1

    .line 2785
    goto :goto_5f

    .line 2791
    .end local v0    # "bss":Landroidx/fragment/app/BackStackRecord;
    :cond_7e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne v3, v0, :cond_88

    .line 2792
    return v1

    .line 2794
    :cond_88
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_8f
    if-le v0, v3, :cond_a4

    .line 2795
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2796
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2794
    add-int/lit8 v0, v0, -0x1

    goto :goto_8f

    .line 2799
    .end local v0    # "i":I
    .end local v3    # "index":I
    :cond_a4
    :goto_a4
    return v2
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 922
    iget v0, p3, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v0, :cond_25

    .line 923
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 926
    :cond_25
    iget v0, p3, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 927
    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .registers 5
    .param p1, "cb"    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    .line 3422
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    invoke-direct {v1, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;-><init>(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3423
    return-void
.end method

.method public removeFragment(Landroidx/fragment/app/Fragment;)V
    .registers 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1936
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    :cond_28
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1938
    .local v0, "inactive":Z
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_34

    if-eqz v0, :cond_4c

    .line 1939
    :cond_34
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1940
    :try_start_37
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1941
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_4d

    .line 1942
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_47

    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_47

    .line 1943
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1945
    :cond_47
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1946
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1948
    :cond_4c
    return-void

    .line 1941
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    .line 915
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 916
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 918
    :cond_7
    return-void
.end method

.method reportBackStackChanged()V
    .registers 3

    .line 2731
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 2732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 2733
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 2732
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2736
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .registers 19
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 3054
    move-object/from16 v1, p0

    if-nez p1, :cond_5

    return-void

    .line 3055
    :cond_5
    move-object/from16 v2, p1

    check-cast v2, Landroidx/fragment/app/FragmentManagerState;

    .line 3056
    .local v2, "fms":Landroidx/fragment/app/FragmentManagerState;
    iget-object v0, v2, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    if-nez v0, :cond_e

    return-void

    .line 3058
    :cond_e
    const/4 v0, 0x0

    .line 3059
    .local v0, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    const/4 v3, 0x0

    .line 3063
    .local v3, "viewModelStores":Ljava/util/List;, "Ljava/util/List<Landroidx/lifecycle/ViewModelStore;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_ba

    .line 3064
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v6

    .line 3065
    .local v6, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v0

    .line 3066
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/FragmentManagerNonConfig;->getViewModelStores()Ljava/util/List;

    move-result-object v3

    .line 3067
    if-eqz v6, :cond_27

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_28

    :cond_27
    const/4 v7, 0x0

    .line 3068
    .local v7, "count":I
    :goto_28
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_29
    if-ge v8, v7, :cond_b7

    .line 3069
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 3070
    .local v9, "f":Landroidx/fragment/app/Fragment;
    sget-boolean v10, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_4d

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restoreAllState: re-attaching retained "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_4d
    const/4 v10, 0x0

    .line 3072
    .local v10, "index":I
    :goto_4e
    iget-object v11, v2, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    array-length v11, v11

    if-ge v10, v11, :cond_60

    iget-object v11, v2, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    aget-object v11, v11, v10

    iget v11, v11, Landroidx/fragment/app/FragmentState;->mIndex:I

    iget v12, v9, Landroidx/fragment/app/Fragment;->mIndex:I

    if-eq v11, v12, :cond_60

    .line 3073
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    .line 3075
    :cond_60
    iget-object v11, v2, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    array-length v11, v11

    if-ne v10, v11, :cond_82

    .line 3076
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find active fragment with index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v11}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3079
    :cond_82
    iget-object v11, v2, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    aget-object v11, v11, v10

    .line 3080
    .local v11, "fs":Landroidx/fragment/app/FragmentState;
    iput-object v9, v11, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    .line 3081
    iput-object v4, v9, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3082
    iput v5, v9, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 3083
    iput-boolean v5, v9, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3084
    iput-boolean v5, v9, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 3085
    iput-object v4, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 3086
    iget-object v12, v11, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v12, :cond_b3

    .line 3087
    iget-object v12, v11, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v13, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v13}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3088
    iget-object v12, v11, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v13, "android:view_state"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v12

    iput-object v12, v9, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 3090
    iget-object v12, v11, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v12, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 3068
    .end local v9    # "f":Landroidx/fragment/app/Fragment;
    .end local v10    # "index":I
    .end local v11    # "fs":Landroidx/fragment/app/FragmentState;
    :cond_b3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_29

    :cond_b7
    move-object v6, v3

    move-object v3, v0

    goto :goto_bc

    .line 3063
    .end local v6    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    .end local v7    # "count":I
    .end local v8    # "i":I
    :cond_ba
    move-object v6, v3

    move-object v3, v0

    .line 3097
    .end local v0    # "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    .local v3, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    .local v6, "viewModelStores":Ljava/util/List;, "Ljava/util/List<Landroidx/lifecycle/ViewModelStore;>;"
    :goto_bc
    new-instance v0, Landroid/util/SparseArray;

    iget-object v7, v2, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    array-length v7, v7

    invoke-direct {v0, v7}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, v1, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    .line 3098
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c7
    iget-object v7, v2, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    array-length v7, v7

    if-ge v0, v7, :cond_137

    .line 3099
    iget-object v7, v2, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    aget-object v7, v7, v0

    .line 3100
    .local v7, "fs":Landroidx/fragment/app/FragmentState;
    if-eqz v7, :cond_134

    .line 3101
    const/4 v8, 0x0

    .line 3102
    .local v8, "childNonConfig":Landroidx/fragment/app/FragmentManagerNonConfig;
    if-eqz v3, :cond_e4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_e4

    .line 3103
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Landroidx/fragment/app/FragmentManagerNonConfig;

    move-object v14, v8

    goto :goto_e5

    .line 3105
    :cond_e4
    move-object v14, v8

    .end local v8    # "childNonConfig":Landroidx/fragment/app/FragmentManagerNonConfig;
    .local v14, "childNonConfig":Landroidx/fragment/app/FragmentManagerNonConfig;
    :goto_e5
    const/4 v8, 0x0

    .line 3106
    .local v8, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    if-eqz v6, :cond_f7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_f7

    .line 3107
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Landroidx/lifecycle/ViewModelStore;

    move-object v15, v8

    goto :goto_f8

    .line 3109
    :cond_f7
    move-object v15, v8

    .end local v8    # "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    .local v15, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    :goto_f8
    iget-object v9, v1, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v10, v1, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    iget-object v11, v1, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    move-object v8, v7

    move-object v12, v14

    move-object v13, v15

    invoke-virtual/range {v8 .. v13}, Landroidx/fragment/app/FragmentState;->instantiate(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerNonConfig;Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    .line 3111
    .local v8, "f":Landroidx/fragment/app/Fragment;
    sget-boolean v9, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_12b

    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreAllState: active #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    :cond_12b
    iget-object v9, v1, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v10, v8, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3116
    iput-object v4, v7, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    .line 3098
    .end local v7    # "fs":Landroidx/fragment/app/FragmentState;
    .end local v8    # "f":Landroidx/fragment/app/Fragment;
    .end local v14    # "childNonConfig":Landroidx/fragment/app/FragmentManagerNonConfig;
    .end local v15    # "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    :cond_134
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    .line 3121
    .end local v0    # "i":I
    :cond_137
    if-eqz p2, :cond_189

    .line 3122
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 3123
    .local v0, "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    if-eqz v0, :cond_144

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_145

    :cond_144
    const/4 v7, 0x0

    .line 3124
    .local v7, "count":I
    :goto_145
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_146
    if-ge v8, v7, :cond_189

    .line 3125
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 3126
    .restart local v9    # "f":Landroidx/fragment/app/Fragment;
    iget v10, v9, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    if-ltz v10, :cond_186

    .line 3127
    iget-object v10, v1, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v11, v9, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/Fragment;

    iput-object v10, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 3128
    iget-object v10, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-nez v10, :cond_186

    .line 3129
    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Re-attaching retained fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " target no longer exists: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    .end local v9    # "f":Landroidx/fragment/app/Fragment;
    :cond_186
    add-int/lit8 v8, v8, 0x1

    goto :goto_146

    .line 3137
    .end local v0    # "nonConfigFragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    .end local v7    # "count":I
    .end local v8    # "i":I
    :cond_189
    iget-object v0, v1, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3138
    iget-object v0, v2, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    if-eqz v0, :cond_20f

    .line 3139
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_194
    iget-object v0, v2, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    array-length v0, v0

    if-ge v7, v0, :cond_20f

    .line 3140
    iget-object v0, v1, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v8, v2, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    aget v8, v8, v7

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/fragment/app/Fragment;

    .line 3141
    .local v8, "f":Landroidx/fragment/app/Fragment;
    if-nez v8, :cond_1c7

    .line 3142
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No instantiated fragment for index #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3145
    :cond_1c7
    const/4 v0, 0x1

    iput-boolean v0, v8, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 3146
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1f0

    const-string v0, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAllState: added #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    :cond_1f0
    iget-object v0, v1, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_207

    .line 3150
    iget-object v9, v1, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v9

    .line 3151
    :try_start_1fb
    iget-object v0, v1, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3152
    monitor-exit v9

    .line 3139
    .end local v8    # "f":Landroidx/fragment/app/Fragment;
    add-int/lit8 v7, v7, 0x1

    goto :goto_194

    .line 3152
    .restart local v8    # "f":Landroidx/fragment/app/Fragment;
    :catchall_204
    move-exception v0

    monitor-exit v9
    :try_end_206
    .catchall {:try_start_1fb .. :try_end_206} :catchall_204

    throw v0

    .line 3148
    :cond_207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Already added!"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3157
    .end local v7    # "i":I
    .end local v8    # "f":Landroidx/fragment/app/Fragment;
    :cond_20f
    iget-object v0, v2, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    if-eqz v0, :cond_283

    .line 3158
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, v2, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v4, v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21e
    iget-object v4, v2, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v4, v4

    if-ge v0, v4, :cond_282

    .line 3160
    iget-object v4, v2, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Landroidx/fragment/app/BackStackState;->instantiate(Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v4

    .line 3161
    .local v4, "bse":Landroidx/fragment/app/BackStackRecord;
    sget-boolean v7, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_271

    .line 3162
    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreAllState: back stack #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    new-instance v7, Landroidx/core/util/LogWriter;

    const-string v8, "FragmentManager"

    invoke-direct {v7, v8}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 3165
    .local v7, "logw":Landroidx/core/util/LogWriter;
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3166
    .local v8, "pw":Ljava/io/PrintWriter;
    const-string v9, "  "

    invoke-virtual {v4, v9, v8, v5}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 3167
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 3169
    .end local v7    # "logw":Landroidx/core/util/LogWriter;
    .end local v8    # "pw":Ljava/io/PrintWriter;
    :cond_271
    iget-object v7, v1, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3170
    iget v7, v4, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v7, :cond_27f

    .line 3171
    iget v7, v4, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v1, v7, v4}, Landroidx/fragment/app/FragmentManagerImpl;->setBackStackIndex(ILandroidx/fragment/app/BackStackRecord;)V

    .line 3159
    .end local v4    # "bse":Landroidx/fragment/app/BackStackRecord;
    :cond_27f
    add-int/lit8 v0, v0, 0x1

    goto :goto_21e

    .end local v0    # "i":I
    :cond_282
    goto :goto_285

    .line 3175
    :cond_283
    iput-object v4, v1, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3178
    :goto_285
    iget v0, v2, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz v0, :cond_295

    .line 3179
    iget-object v0, v1, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v4, v2, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 3181
    :cond_295
    iget v0, v2, Landroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    iput v0, v1, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 3182
    return-void
.end method

.method retainNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;
    .registers 2

    .line 2803
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    invoke-static {v0}, Landroidx/fragment/app/FragmentManagerImpl;->setRetaining(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 2804
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .registers 14

    .line 2941
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 2942
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 2943
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2945
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2946
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2948
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_1d8

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_1b

    goto/16 :goto_1d8

    .line 2953
    :cond_1b
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2954
    .local v1, "N":I
    new-array v2, v1, [Landroidx/fragment/app/FragmentState;

    .line 2955
    .local v2, "active":[Landroidx/fragment/app/FragmentState;
    const/4 v3, 0x0

    .line 2956
    .local v3, "haveFragments":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    const-string v5, " has cleared index: "

    const-string v6, "Failure saving state: active "

    const-string v7, ": "

    const-string v8, "FragmentManager"

    if-ge v4, v1, :cond_f5

    .line 2957
    iget-object v9, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 2958
    .local v9, "f":Landroidx/fragment/app/Fragment;
    if-eqz v9, :cond_f1

    .line 2959
    iget v10, v9, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v10, :cond_60

    .line 2960
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v9, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2965
    :cond_60
    const/4 v3, 0x1

    .line 2967
    new-instance v5, Landroidx/fragment/app/FragmentState;

    invoke-direct {v5, v9}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 2968
    .local v5, "fs":Landroidx/fragment/app/FragmentState;
    aput-object v5, v2, v4

    .line 2970
    iget v6, v9, Landroidx/fragment/app/Fragment;->mState:I

    if-lez v6, :cond_c9

    iget-object v6, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v6, :cond_c9

    .line 2971
    invoke-virtual {p0, v9}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2973
    iget-object v6, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_cd

    .line 2974
    iget-object v6, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v6, v6, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v6, :cond_a7

    .line 2975
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 2979
    :cond_a7
    iget-object v6, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v6, :cond_b2

    .line 2980
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2982
    :cond_b2
    iget-object v6, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v10, v9, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const-string v11, "android:target_state"

    invoke-virtual {p0, v6, v11, v10}, Landroidx/fragment/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 2984
    iget v6, v9, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    if-eqz v6, :cond_cd

    .line 2985
    iget-object v6, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget v10, v9, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    const-string v11, "android:target_req_state"

    invoke-virtual {v6, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_cd

    .line 2992
    :cond_c9
    iget-object v6, v9, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v6, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2995
    :cond_cd
    :goto_cd
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_f1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved state of "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    .end local v5    # "fs":Landroidx/fragment/app/FragmentState;
    .end local v9    # "f":Landroidx/fragment/app/Fragment;
    :cond_f1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_25

    .line 3000
    .end local v4    # "i":I
    :cond_f5
    if-nez v3, :cond_101

    .line 3001
    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_100

    const-string v4, "saveAllState: no fragments!"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    :cond_100
    return-object v0

    .line 3005
    :cond_101
    const/4 v0, 0x0

    .line 3006
    .local v0, "added":[I
    const/4 v4, 0x0

    .line 3009
    .local v4, "backStack":[Landroidx/fragment/app/BackStackState;
    iget-object v9, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3010
    if-lez v1, :cond_174

    .line 3011
    new-array v0, v1, [I

    .line 3012
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_10e
    if-ge v9, v1, :cond_174

    .line 3013
    iget-object v10, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/Fragment;

    iget v10, v10, Landroidx/fragment/app/Fragment;->mIndex:I

    aput v10, v0, v9

    .line 3014
    aget v10, v0, v9

    if-gez v10, :cond_149

    .line 3015
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 3016
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v0, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3015
    invoke-direct {p0, v10}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 3019
    :cond_149
    sget-boolean v10, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_171

    .line 3020
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveAllState: adding fragment #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 3021
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3020
    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    :cond_171
    add-int/lit8 v9, v9, 0x1

    goto :goto_10e

    .line 3027
    .end local v9    # "i":I
    :cond_174
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v5, :cond_1bd

    .line 3028
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3029
    if-lez v1, :cond_1bd

    .line 3030
    new-array v4, v1, [Landroidx/fragment/app/BackStackState;

    .line 3031
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_181
    if-ge v5, v1, :cond_1bd

    .line 3032
    new-instance v6, Landroidx/fragment/app/BackStackState;

    iget-object v9, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v6, v9}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    aput-object v6, v4, v5

    .line 3033
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_1ba

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveAllState: adding back stack #"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 3034
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3033
    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :cond_1ba
    add-int/lit8 v5, v5, 0x1

    goto :goto_181

    .line 3039
    .end local v5    # "i":I
    :cond_1bd
    new-instance v5, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v5}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    .line 3040
    .local v5, "fms":Landroidx/fragment/app/FragmentManagerState;
    iput-object v2, v5, Landroidx/fragment/app/FragmentManagerState;->mActive:[Landroidx/fragment/app/FragmentState;

    .line 3041
    iput-object v0, v5, Landroidx/fragment/app/FragmentManagerState;->mAdded:[I

    .line 3042
    iput-object v4, v5, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    .line 3043
    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_1d0

    .line 3044
    iget v6, v6, Landroidx/fragment/app/Fragment;->mIndex:I

    iput v6, v5, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    .line 3046
    :cond_1d0
    iget v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v6, v5, Landroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    .line 3047
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->saveNonConfig()V

    .line 3048
    return-object v5

    .line 2949
    .end local v0    # "added":[I
    .end local v1    # "N":I
    .end local v2    # "active":[Landroidx/fragment/app/FragmentState;
    .end local v3    # "haveFragments":Z
    .end local v4    # "backStack":[Landroidx/fragment/app/BackStackState;
    .end local v5    # "fms":Landroidx/fragment/app/FragmentManagerState;
    :cond_1d8
    :goto_1d8
    return-object v0
.end method

.method saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;
    .registers 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 2905
    const/4 v0, 0x0

    .line 2907
    .local v0, "result":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_c

    .line 2908
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2910
    :cond_c
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2911
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2912
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 2913
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2914
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2917
    :cond_24
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2b

    .line 2918
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentViewState(Landroidx/fragment/app/Fragment;)V

    .line 2920
    :cond_2b
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_3e

    .line 2921
    if-nez v0, :cond_37

    .line 2922
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 2924
    :cond_37
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string v2, "android:view_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2927
    :cond_3e
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_51

    .line 2928
    if-nez v0, :cond_4a

    .line 2929
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 2932
    :cond_4a
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2935
    :cond_51
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .registers 5
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 987
    iget v0, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    if-gez v0, :cond_25

    .line 988
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    .line 991
    :cond_25
    iget v0, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x0

    if-lez v0, :cond_36

    .line 992
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 993
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_35

    new-instance v1, Landroidx/fragment/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :cond_35
    return-object v1

    .line 995
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_36
    return-object v1
.end method

.method saveFragmentViewState(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 2889
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 2890
    return-void

    .line 2892
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_11

    .line 2893
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_14

    .line 2895
    :cond_11
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2897
    :goto_14
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2898
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 2899
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2900
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 2902
    :cond_2a
    return-void
.end method

.method saveNonConfig()V
    .registers 10

    .line 2832
    const/4 v0, 0x0

    .line 2833
    .local v0, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    const/4 v1, 0x0

    .line 2834
    .local v1, "childFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    const/4 v2, 0x0

    .line 2835
    .local v2, "viewModelStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/lifecycle/ViewModelStore;>;"
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v4, 0x0

    if-eqz v3, :cond_a6

    .line 2836
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_a6

    .line 2837
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 2838
    .local v5, "f":Landroidx/fragment/app/Fragment;
    if-eqz v5, :cond_a2

    .line 2839
    iget-boolean v6, v5, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v6, :cond_52

    .line 2840
    if-nez v0, :cond_27

    .line 2841
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 2843
    :cond_27
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2844
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_33

    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v6, v6, Landroidx/fragment/app/Fragment;->mIndex:I

    goto :goto_34

    :cond_33
    const/4 v6, -0x1

    :goto_34
    iput v6, v5, Landroidx/fragment/app/Fragment;->mTargetIndex:I

    .line 2845
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_52

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retainNonConfig: keeping retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FragmentManager"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :cond_52
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v6, :cond_60

    .line 2849
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManagerImpl;->saveNonConfig()V

    .line 2850
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v6, v6, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .local v6, "child":Landroidx/fragment/app/FragmentManagerNonConfig;
    goto :goto_62

    .line 2854
    .end local v6    # "child":Landroidx/fragment/app/FragmentManagerNonConfig;
    :cond_60
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mChildNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2857
    .restart local v6    # "child":Landroidx/fragment/app/FragmentManagerNonConfig;
    :goto_62
    if-nez v1, :cond_7b

    if-eqz v6, :cond_7b

    .line 2858
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v7

    .line 2859
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_73
    if-ge v7, v3, :cond_7b

    .line 2860
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2859
    add-int/lit8 v7, v7, 0x1

    goto :goto_73

    .line 2864
    .end local v7    # "j":I
    :cond_7b
    if-eqz v1, :cond_80

    .line 2865
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2867
    :cond_80
    if-nez v2, :cond_9b

    iget-object v7, v5, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-eqz v7, :cond_9b

    .line 2868
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v7

    .line 2869
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_93
    if-ge v7, v3, :cond_9b

    .line 2870
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2869
    add-int/lit8 v7, v7, 0x1

    goto :goto_93

    .line 2874
    .end local v7    # "j":I
    :cond_9b
    if-eqz v2, :cond_a2

    .line 2875
    iget-object v7, v5, Landroidx/fragment/app/Fragment;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2836
    .end local v5    # "f":Landroidx/fragment/app/Fragment;
    .end local v6    # "child":Landroidx/fragment/app/FragmentManagerNonConfig;
    :cond_a2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 2880
    .end local v3    # "i":I
    :cond_a6
    if-nez v0, :cond_af

    if-nez v1, :cond_af

    if-nez v2, :cond_af

    .line 2881
    iput-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    goto :goto_b6

    .line 2883
    :cond_af
    new-instance v3, Landroidx/fragment/app/FragmentManagerNonConfig;

    invoke-direct {v3, v0, v1, v2}, Landroidx/fragment/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mSavedNonConfig:Landroidx/fragment/app/FragmentManagerNonConfig;

    .line 2886
    :goto_b6
    return-void
.end method

.method scheduleCommit()V
    .registers 5

    .line 2132
    monitor-enter p0

    .line 2133
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 2134
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 2135
    .local v0, "postponeReady":Z
    :goto_10
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1b

    const/4 v1, 0x1

    .line 2136
    .local v1, "pendingReady":Z
    :cond_1b
    if-nez v0, :cond_1f

    if-eqz v1, :cond_35

    .line 2137
    :cond_1f
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2138
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2140
    .end local v0    # "postponeReady":Z
    .end local v1    # "pendingReady":Z
    :cond_35
    monitor-exit p0

    .line 2141
    return-void

    .line 2140
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public setBackStackIndex(ILandroidx/fragment/app/BackStackRecord;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "bse"    # Landroidx/fragment/app/BackStackRecord;

    .line 2164
    monitor-enter p0

    .line 2165
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 2166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 2168
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2169
    .local v0, "N":I
    if-ge p1, v0, :cond_40

    .line 2170
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_3a

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :cond_3a
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a6

    .line 2173
    :cond_40
    :goto_40
    if-ge v0, p1, :cond_7b

    .line 2174
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2175
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_53

    .line 2176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 2178
    :cond_53
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6f

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_6f
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2180
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 2182
    :cond_7b
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_a1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_a1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    .end local v0    # "N":I
    :goto_a6
    monitor-exit p0

    .line 2186
    return-void

    .line 2185
    :catchall_a8
    move-exception v0

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_a8

    goto :goto_ac

    :goto_ab
    throw v0

    :goto_ac
    goto :goto_ab
.end method

.method public setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 3405
    if-eqz p1, :cond_3a

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_17

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_3a

    .line 3406
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-ne v0, p0, :cond_17

    goto :goto_3a

    .line 3407
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3410
    :cond_3a
    :goto_3a
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 3411
    return-void
.end method

.method public showFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 1973
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_1c
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_29

    .line 1975
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1978
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1980
    :cond_29
    return-void
.end method

.method startPendingDeferredFragments()V
    .registers 3

    .line 1875
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    return-void

    .line 1877
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1878
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1879
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_1b

    .line 1880
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V

    .line 1877
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1883
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1006
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_24

    .line 1010
    invoke-static {v1, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_29

    .line 1012
    :cond_24
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 1014
    :goto_29
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .registers 6
    .param p1, "cb"    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 3427
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 3428
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_4
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .local v2, "N":I
    :goto_a
    if-ge v1, v2, :cond_21

    .line 3429
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    iget-object v3, v3, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    if-ne v3, p1, :cond_1e

    .line 3430
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 3431
    goto :goto_21

    .line 3428
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3434
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_21
    :goto_21
    monitor-exit v0

    .line 3435
    return-void

    .line 3434
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    goto :goto_27

    :goto_26
    throw v1

    :goto_27
    goto :goto_26
.end method
