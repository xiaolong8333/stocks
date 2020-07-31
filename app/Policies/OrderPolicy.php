<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Order;

class OrderPolicy extends Policy
{
    public function update(User $user, Order $order)
    {
        return $user->isAuthorOf($order);
    }

    public function destroy(User $user, Order $order)
    {
        return $user->isAuthorOf($order);
    }
}
