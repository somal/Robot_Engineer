//=================================================================================================
// Copyright (c) 2012, Johannes Meyer, TU Darmstadt
// All rights reserved.

// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the Flight Systems and Automatic Control group,
//       TU Darmstadt, nor the names of its contributors may be used to
//       endorse or promote products derived from this software without
//       specific prior written permission.

// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//=================================================================================================

#ifndef HECTOR_MOVE_BASE_MSGS_MOVE_BASE_ACTION_H
#define HECTOR_MOVE_BASE_MSGS_MOVE_BASE_ACTION_H

#include <hector_move_base_msgs/MoveBaseActionGeneric.h>

#include <hector_move_base_msgs/MoveBaseGoal.h>
#include <hector_move_base_msgs/MoveBasePath.h>
#include <hector_move_base_msgs/MoveBaseExplore.h>

#include <ros/serialization.h>

namespace hector_move_base_msgs
{

  template <class MoveBaseType> struct TypeId;

  template <class ContainerAllocator>
  struct TypeId<MoveBaseGoal_<ContainerAllocator> > { static const uint8_t type = MoveBaseActionGeneric::GOAL; };

  template <class ContainerAllocator>
  struct TypeId<MoveBasePath_<ContainerAllocator> > { static const uint8_t type = MoveBaseActionGeneric::PATH; };

  template <class ContainerAllocator>
  struct TypeId<MoveBaseExplore_<ContainerAllocator> > { static const uint8_t type = MoveBaseActionGeneric::EXPLORE; };


  template <class MoveBaseType>
  struct GoalWrapper
  {
    template <class ContainerAllocator>
    static typename MoveBaseType::Ptr getAction(MoveBaseActionGeneric_<ContainerAllocator> const& msg)
    {
      typename MoveBaseType::Ptr goal;
      if (!hasType(msg)) return goal;

      ros::serialization::IStream stream(const_cast<uint8_t *>(&(msg.goal[0])), msg.goal.size());
      goal.reset(new MoveBaseType);
      ros::serialization::deserialize(stream, *goal);

      return goal;
    }

    template <class ContainerAllocator>
    static bool hasType(MoveBaseActionGeneric_<ContainerAllocator> const& msg)
    {
      return (msg.type == getTypeId());
    }

    template <class ContainerAllocator>
    static void setAction(MoveBaseActionGeneric_<ContainerAllocator>& msg, MoveBaseType const& goal)
    {
      msg.type = getTypeId();
      msg.goal.resize(ros::serialization::serializationLength(goal));

      ros::serialization::OStream stream(&(msg.goal[0]), msg.goal.size());
      ros::serialization::serialize(stream, goal);
    }

    static uint8_t getTypeId() { return TypeId<MoveBaseType>::type; }
  };

  template <class MoveBaseType, class MoveBaseActionGeneric>
  static inline typename MoveBaseType::Ptr getAction(MoveBaseActionGeneric const& msg)
  {
    return GoalWrapper<MoveBaseType>::getAction(msg);
  }

  template <class MoveBaseType, class MoveBaseActionGeneric>
  static inline bool hasType(MoveBaseActionGeneric const& msg)
  {
    return GoalWrapper<MoveBaseType>::hasType(msg);
  }

  template <class MoveBaseType, class MoveBaseActionGeneric>
  static inline void setAction(MoveBaseActionGeneric& msg, MoveBaseType const& goal)
  {
    GoalWrapper<MoveBaseType>::setAction(msg, goal);
  }

} // namespace hector_move_base_msgs

#endif // HECTOR_MOVE_BASE_MSGS_MOVE_BASE_ACTION_H
